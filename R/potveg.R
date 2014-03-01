potveg=function(ID,classif="RF99"){
  
  require(paleofire)
  require(ggplot2)
  require(sp)
  require(raster)
  
  if(classif=="RF99") {
    data(PNV_RF99);r=PNV_RF99
  } else {data(PNV_L12);r=PNV_L12}
  
  if(classif=="RF99") {
    vnames=c("Tropical Evergreen Forest/Woodland",
             "Tropical Deciduous Forest/Woodland",
             "Temperate Broadleaf Evergreen Forest/Woodland",
             "Temperate Needleleaf Evergreen Forest/Woodland",
             "Temperate Deciduous Forest/Woodland",
             "Boreal Evergreen Forest/Woodland",
             "Boreal Deciduous Forest/Woodland",
             "Evergreen/Deciduous Mixed Forest/Woodland",
             "Savanna","Grassland/Steppe",
             "Dense Shrubland",
             "Open Shrubland","Tundra","Desert","Polar Desert/Rock/Ice")
  } else vnames=c("Boreal forest","Desert vegetation","Grassland and dry shrubland","Savannas abd dry woodlands",
                  "Temperate forest" ,"Tropical forest", "Tundra", "Warm temperate","Warm desert","Cold desert")
  
  # New site location 
  capture.output(
    x <- summary(ID)$LONGITUDE,
    y <- summary(ID)$LATITUDE,
    file='NUL')
  data<-data.frame(x,y)
  
  r=crop(r,extent(data))
  
  # points(x,y)
  # Convert data to spatial points data frame using sp
  coordinates(data) <- c("x","y")
  
  # Find potveg umber at data location
  loc=extract(r, data)
  data=data.frame(x,y,loc=loc)
  data=na.omit(data)
  
  map1=data.frame(rasterToPoints(r))
  colnames(map1)=c("X","Y","VEG")
  
  ## Little trick for n
  m=rep(1,length(data[,1]))
  n=c()
  for (i in 1:length(vnames))
    n[i]=sum(m[data[,3]==i])
  
  vnames=paste(vnames,", n=",n,sep="")
  
  ## Replace values
  
  for(i in 1:length(vnames)){
    map1[map1[,3]==i,4]=vnames[i]
    data[data[,3]==i,4]=vnames[i]
  }
  data[,4]=as.factor(data[,4])
  map1[,4]=as.factor(map1[,4])
  data[,4]=ordered(data[,4],levels=vnames)
  map1[,4]=ordered(map1[,4],levels=vnames)
  colnames(data)=c("x","y","id","name")
  colnames(map1)=c("x","y","id","name")
  out=list(site_data=data,map=map1)
  return(out)
}

plot.potveg=function(x,...){
  if(classif=="RF99") {
    pal=c("#A6CEE3" , "#1F78B4" , "#B2DF8A" , "#33A02C" , "#435c0a",
          "#FB9A99" , "#E31A1C" , "#FDBF6F" ,"#8fa460", "#FF7F00" ,"#6060d4", "#CAB2D6" , "#6A3D9A" , "#FFFF99" , "#B15928")
  } else {pal=c("#A6CEE3" , "#1F78B4" , "#B2DF8A" , "#33A02C" , "#435c0a",
                "#FB9A99" , "#E31A1C" , "#FDBF6F" ,"#8fa460", "#FF7F00")}
  
  # source("/Users/Olivier/Documents/biome_CHAR/scalebar.R")
  # # To use for fills, add
  # pdf(file="/Users/Olivier/Desktop/map.pdf",width=12,height=7)
  p=ggplot(map1)+geom_raster(data=map1,aes(X,Y,fill=VEG) )+
    scale_fill_manual(name="Potential vegetation",values=pal,labels =vnames)+
    geom_point(data=data,aes(x,y),alpha=0.7,size=3)+xlab("Longitude")+ylab("Latitude")+
    theme_bw(base_size=18)
  p
  return(p)
  
}







