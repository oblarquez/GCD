

library(paleofire)
dat=read.csv("/Users/OlivierB/Downloads/charcoals.csv",sep=",",header=T)
sites=read.csv("/Users/OlivierB/Downloads/cores.csv", sep=",",header=T)


dat$UNIT=NA
class(dat$UNIT)
data(paleofiresites)
data("paleofiredata")

paleofiredata=paleofiredata[duplicated(paleofiredata)==FALSE,] # Drop duplicates
paleofiredata=subset(paleofiredata, !is.na(paleofiredata$EST_AGE))
paleofiredata=subset(paleofiredata, paleofiredata$QUANTITY!=-9999)
paleofiredata=subset(paleofiredata, paleofiredata$EST_AGE>-100)

dat$est_age_cal_bp[ which(dat$quantity==-9999)]=-9999
dat1=subset(dat, dat$est_age_cal_bp>-100)



id=unique(paleofiredata$ID_SITE)


for (i in 1:length(id)){
  options(warn=0)
  newid=sites$id_site[sites$gcd_access_id==id[i]]
  dat1$UNIT[dat1$id_site==newid]<-as.character(paleofiredata$UNIT[paleofiredata$ID_SITE==id[i]])
  cat(i, " ")
}

## Verifier sites 463 ,731, 736

levels(paleofiredata$METHOD)
levels(dat1$charcoal_method_name)

levels(dat1$charcoal_method_name)<-c("NA", "ACID", "CPRO", "IMAG", "HVLQ", "OREC",  "GRAV", "HNPK",  "NOTK",  "OTHE", "POLS", "SIEV" )

levels(paleofiredata$TYPE)


levels(dat1$charcoal_units_name)

lst=list.files('/Users/OlivierB/Documents/Shared/GCD_tables/')
for( i in 1:length(lst)){
  yo=tolower(substr(lst[i],1,nchar(lst[i])-4))
  toto=read.csv(paste0("/Users/OlivierB/Documents/Shared/GCD_tables/",lst[i]))
  assign(yo,toto)
  save(file=paste0("/Users/OlivierB/Documents/GCD/data/",yo,".rda"),yo,compress="xz")
}



