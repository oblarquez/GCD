

library(paleofire)
dat=read.csv("/Users/OlivierB/Downloads/charcoals.csv",sep=",",header=T)
sites=read.csv("/Users/OlivierB/Downloads/cores.csv", sep=",",header=T)

unique(sites$id_site)==unique(dat[,1])

dat$UNIT=NA
class(dat$UNIT)

length(unique(sites$gcd_access_id))

data("paleofiredata")
id=unique(paleofiredata$ID_SITE)

for (i in 1:length(id)){
newid=sites$id_site[sites$gcd_access_id==id[i]]
dat$UNIT[dat$id_site==newid]<-as.character(paleofiredata$UNIT[paleofiredata$ID_SITE==id[i]])
cat(i, " ")
}




a=pfSiteSel(id_site==123)
char=pfExtract(a)

y=as.vector(pfMinMax(char$QUANTITY))
x=as.vector(char$EST_AGE)
win=500

locbootA <- locfit(y ~ lp(x, deg = 1, h = win/2), maxk = 500, family = "qrgauss")
predbootA <- predict(locbootA, newdata = x, se.fit = TRUE)

plot(x,y)
lines(x,predbootA$fit)


A=read.csv("http://blarquez.com/public/code/loupchar.csv")
C_=A[,6] # charcoal areas
P_=A[,1:5] # CmTop, CmBot, AgeTop, AgeBot, Volume 


## Calculates charcoal accumulation rate (CHAR, mm2.cm-2.yr-1)
CHAR=pretreatment(params=P_,serie=C_,Int=TRUE)
plot(CHAR,xlim=c(12000,0))

