library(paleofire)
library(plyr)
library(stringdist)
ClosestMatch2 = function(string, stringVector){
  stringVector[amatch(string, stringVector, maxDist=Inf)]
}

## Import tables --------------------------------------------------------------------
lst=list.files('/Users/OlivierB/Documents/Shared/GCD_tables/')
for( i in 1:length(lst)){
  yo=tolower(substr(lst[i],1,nchar(lst[i])-4))
  toto=read.csv(paste0("/Users/OlivierB/Documents/Shared/GCD_tables/",lst[i]))
  assign(yo,toto)
  save(file=paste0("/Users/OlivierB/Documents/GCD/data/",yo,".rda"),yo,compress="xz")
}
## Import tables --------------------------------------------------------------------

## Data from Boris ------------------------------------------------------------------
dat=read.csv("/Users/OlivierB/Downloads/charcoals.csv",sep=",",header=T)
sites=read.csv("/Users/OlivierB/Downloads/cores.csv", sep=",",header=T)
## Data from Boris ------------------------------------------------------------------

dat$UNIT=NA
class(dat$UNIT)
data(paleofiresites)
data("paleofiredata")

paleofiredata1=paleofiredata[duplicated(paleofiredata)==FALSE,] # Drop duplicates
paleofiredata2=paleofiredata[duplicated(paleofiredata)==TRUE,] # Drop duplicates


paleofiredata=subset(paleofiredata, !is.na(paleofiredata$EST_AGE))
paleofiredata=subset(paleofiredata, paleofiredata$QUANTITY!=-9999)
paleofiredata=subset(paleofiredata, paleofiredata$EST_AGE>-100)

dat$est_age_cal_bp[ which(dat$quantity==-9999)]=-9999
dat1=subset(dat, dat$est_age_cal_bp>-100)

## Retrieve Old Units
id=unique(paleofiredata$ID_SITE)
for (i in 1:length(id)){
  options(warn=0)
  newid=sites$id_site[sites$gcd_access_id==id[i]]
  dat1$UNIT[dat1$id_site==newid]<-as.character(paleofiredata$UNIT[paleofiredata$ID_SITE==id[i]])
  cat(i, " ")
}
## Verifier sites 463 ,731, 736

## Units for new sites---------------------------------------------------------------
id=unique(dat1$id_site[ which(is.na(dat1$UNIT)) ]) # Sites that need code

for(i in 1:length(id)){
  dequoi=ClosestMatch2( unique(dat1$charcoal_units_name[dat1$id_site==id[i]]),
                 charcoal_units$UNITS)
  dat1$UNIT[dat1$id_site==id[i]]<-as.character(charcoal_units$ID_UNITS[ which(charcoal_units$UNITS==dequoi) ])
}

## Now the TYPE column --------------------------------------------------------------

dat1$TYPE=dat1$UNIT

dat1$TYPE=mapvalues(dat1$TYPE, 
                    as.character(charcoal_units$ID_UNITS), 
                    as.character(charcoal_units$X1ST_LEVEL), warn_missing = TRUE)

## Retrieve METHODS -----------------------------------------------------------------
levels(paleofiredata$METHOD)
levels(dat1$charcoal_method_name)

levels(dat1$charcoal_method_name)<-c("NA", "ACID", "CPRO", "IMAG", "HVLQ", "OREC",  "GRAV", "HNPK",  "NOTK",  "OTHE", "POLS", "SIEV" )
levels(paleofiredata$TYPE)

levels(dat1$charcoal_units_name)

## FINAL DATAFRAME= -----------------------------------------------------------------

df=data.frame(ID_SITE=dat1$id_site,DEPTH=dat1$depth_value,EST_AGE=dat1$est_age_cal_bp,
              QUANTITY=dat1$quantity,UNIT=dat1$UNIT,METHOD=dat1$charcoal_method_name,
              TYPE=dat1$TYPE)




library(GCD)
data("charcoal_units")
head(charcoal_units)
