potveg=function(ID,classif="rf99",buffer=NULL){
  
  
  paleofiresites=NULL
  # New site location 
  data(paleofiresites,envir = environment())
  x=paleofiresites[paleofiresites$id_site %in% ID$id_site,]$long
  y=paleofiresites[paleofiresites$id_site %in% ID$id_site,]$lat
  data<-data.frame(x,y)
  
  
  if(classif=="rf99") {
    PNV_RF99=NULL
    data(PNV_RF99,envir = environment())
    r=raster::crop(PNV_RF99,raster::extent(min(x)-10,max(x)+10,min(y)-10,max(y)+10))
  } 
  if(classif=="l12"){
    PNV_L12=NULL
    data(PNV_L12,envir = environment())
    r=raster::crop(PNV_L12,raster::extent(min(x)-10,max(x)+10,min(y)-10,max(y)+10))
  }
  
  if(classif=="rf99") {
    vnames=c("0: Water",
             "1: Tropical Evergreen Forest/Woodland",
             "2: Tropical Deciduous Forest/Woodland",
             "3: Temperate Broadleaf Evergreen Forest/Woodland",
             "4: Temperate Needleleaf Evergreen Forest/Woodland",
             "5: Temperate Deciduous Forest/Woodland",
             "6: Boreal Evergreen Forest/Woodland",
             "7: Boreal Deciduous Forest/Woodland",
             "8: Evergreen/Deciduous Mixed Forest/Woodland",
             "9: Savanna","10: Grassland/Steppe",
             "11: Dense Shrubland",
             "12: Open Shrubland","13: Tundra","14: Desert","15: Polar Desert/Rock/Ice")
  } else vnames=c("0: Water","1: Boreal forest","2: Desert vegetation",
                  "3: Grassland and dry shrubland","4: Savannas and dry woodlands",
                  "5: Temperate forest" ,"6: Tropical forest", "7: Tundra", 
                  "8: Warm temperate","9: Warm desert","10: Cold desert")
  
  # points(x,y)
  # Convert data to spatial points data frame using sp
  
  data=SpatialPoints(data, proj4string=CRS("+proj=longlat +datum=WGS84"))
  raster::projection(r) <- "+proj=longlat +datum=WGS84"
  
  # Find potveg number at EXACT data location
  # OR within a buffer using kernel density estimation
  
  if(is.null(buffer)==FALSE){
    
    buff=raster::extract(r, data, buffer=buffer)
    
    buffer_dens=function(x){
      if(sum(x,na.rm=TRUE)!=0){
        x=na.omit(x)
        if(length(unique(x))>1){
          dens=density(x,na.rm=TRUE,bw = "nrd0", kernel ="gaussian")
          #plot(density(x,na.rm=TRUE,bw = "nrd0", kernel ="gaussian"))
          pv=round(dens$x[which(dens$y==max(dens$y))])
        } else pv=unique(x)
      } else pv=0
      return(pv)
    }
    
    loc=lapply(buff,buffer_dens)
    
    ## Sometimes within a certain radius there is two potential vegetations with exactly 
    #  the same coverage we will use extract to find the potential vegetation at site
    # location and the assign it to the site
    
    g=c()
    for(i in 1:length(loc))
      g[i]=length(loc[[i]])
    where=which(g>1)
    
    if(length(where)>0)
    for(i in 1:length(where)){
      temp=raster::extract(r,data[where[i]])
      if(is.na(temp)) temp=0
      loc[[where[i]]]=temp
    }
    
    ## Ok now
    
    loc=unlist(loc)} else loc=extract(r, data)
  
  ## Done 
  
  
  data=data.frame(x,y,loc=loc)
  sitid=ID$id_site[is.na(data[,3])==FALSE]
  data=data[is.na(data[,3])==FALSE,]
  
  r[is.na(r)]=0 ## Fix for water
  map1=data.frame(raster::rasterToPoints(r))
  colnames(map1)=c("X","Y","VEG")
  
  ## Little trick for n
  m=rep(1,length(data[,1]))
  n=c()
  for (i in 1:length(vnames))
    n[i]=sum(m[data[,3]==i-1])
  
  vnames=paste(vnames,", n=",n,sep="")
  
  ## Replace values
  for(i in 1:length(vnames)){
    map1[map1[,3]==i-1,4]=vnames[i]
    data[data[,3]==i-1,4]=vnames[i]
  }
  data[,4]=as.factor(data[,4])
  map1[,4]=as.factor(map1[,4])
  
  data[,4]=ordered(data[,4],levels=vnames)
  map1[,4]=ordered(map1[,4],levels=vnames)
  
  colnames(data)=c("x","y","veg_id","name")
  colnames(map1)=c("x","y","veg_id","name")
  
  ## Sites ids
  data=cbind(id_site=sitid,data)
  
  out=list(site_data=data,map=map1)
  class(out)="potveg"
  return(out)
}

plot.potveg=function(x,size=4,palette=NULL,alpha=0.5,text=FALSE,...){
  
  ## no visible binding for global variable check problem: 
  y<-name<-veg_id<-NULL
  
  if(is.null(palette))
    pal=c("#8dd3c7","#ffffb3","#bebada","#fb8072",
          "#80b1d3","#fdb462","#b3de69","#fccde5","#d9d9d9","#bc80bd",
          "#ccebc5","#ffed6f") else pal=palette
 

  pal=colorRampPalette(pal)(length(unique(x$map$name))-1) 
  pal=c("#FFFFFF",pal) 
  
  p=ggplot(x$map)+geom_raster(data=x$map,aes(x,y,fill=name) )+
    scale_fill_manual(name="Potential vegetation",values=pal)+
    xlab("Longitude")+ylab("Latitude")+
    theme_bw(base_size=18)
  if(text==TRUE){p=p+geom_text(data=x$site_data,aes(x,y,label=veg_id),alpha=alpha,size=size)
  } else p=p+ geom_point(data=x$site_data,aes(x,y),alpha=alpha,size=size)
  p
  return(p)
  
}
