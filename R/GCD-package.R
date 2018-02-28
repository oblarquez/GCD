#' Charcoal units
#' 
#' Charcoal units used in GCD
#' 
#' @name charcoal_units
#' @docType data
NULL





#' Internal GCD Data
#' 
#' Internal GCD Data
#' @name GCD-internal
#' @aliases GCD-internal Internal PNV_L12 PNV_RF99 pub pub_key
NULL




#' GCD: Global Charcoal Database data
#' 
#' The GCD package provides Global Charcoal Database data updated at regular
#' intervals to be used in cunjuction with the paleofire package.
#' 
#' \tabular{ll}{ Package: \tab GCD\cr Type: \tab Package\cr Version: \tab
#' 3.0.1\cr Date: \tab 2014-04-30\cr License: \tab GPL (>=2)\cr }
#' 
#' @name GCD-package
#' @aliases GCD-package GCD
#' @docType package
#' @section Author(s): Global Paleofire Working Group <paleofire gmail.com>
#' @seealso \url{http://gpwg.org}
#' @references Power, M., J. Marlon, P. Bartlein, and S. Harrison. 2010. Fire
#' history and the Global Charcoal Database: a new tool for hypothesis testing
#' and data exploration. Palaeogeography, Palaeoclimatology, Palaeoecology
#' 291:52-59.
#' @keywords charcoal, fire, global, paleo sediments,
#' @examples
#' 
#' 
#' rm(list=ls())
#' 
#' library(GCD)
#' 
#' ## Charcoal data:
#' 
#' data(paleofiredata)
#' head(paleofiredata)
#' 
#' 
#' ## Associated sites informations:
#' 
#' data(paleofiresites)
#' head(paleofiresites)
#' 
#' 
NULL





#' Methods
#' 
#' Charcoal methods used in GCD
#' 
#' 
#' @name method
#' @docType data
#' @format A data frame with 13 observations on the following 3 variables.
#' \describe{ \item{ID_METHOD}{a factor with levels \code{ACID}
#' \code{CPRO} \code{GRAV} \code{HNPK} \code{HVLQ} \code{IMAG} \code{NOTK}
#' \code{OPPF} \code{OTHE} \code{POLS} \code{SIEV} \code{SIPO} \code{THSL}}
#' \item{METHOD}{a factor with levels \code{Acidification of sample
#' using gas chromatography to measure elemental carbon (Verardo etal 1990)}
#' \code{charcoal part Ided as opaque phytoclasts/pyrofusinite in palynofacies
#' anlaysis} \code{Charcoal part. Ided in thin slides (soil micromorphology)}
#' \code{Charcoal particles identified by imaging software} \code{Charcoal
#' separated by heavy liquid preparation} \code{Cumulative probability (95\%
#' confidence interval) alluvial soil charcoal} \code{GRAVIMETRIC chemical
#' assay (Winkler method)} \code{Hand picked charcoal from soil samples}
#' \code{Not known} \code{Other} \code{Pollen slide} \code{Sieved} \code{Sieved
#' + Pollslide}} 
#' \item{METH_CODE}{a numeric vector} }
#' @keywords datasets
#' @examples
#' 
#' 
#' data(method)
#' 
#' 
NULL


#' GCD Charcoal data
#' 
#' Charcoal series from the Global Charcoal Database
#' 
#' 
#' @name paleofiredata
#' @docType data
#' @format A data frame with 142507 observations on the following 8 variables.
#' \describe{\item{ID_SITE}{a numeric vector} 
#' \item{DEPTH}{a numeric vector} 
#' \item{EST_AGE}{a numeric vector}
#' \item{QUANTITY}{a numeric vector} 
#' \item{UNIT}{a factor with
#' levels \code{\%125} \code{\%DWT} \code{\%TOF} \code{\%WTO} \code{100P}
#' \code{125V} \code{5015} \code{7PRA} \code{8POS} \code{ABSC} \code{ARCC}
#' \code{AREA} \code{ARPG} \code{BCCT} \code{C010} \code{C01K} \code{C100}
#' \code{C120} \code{C125} \code{C140} \code{C150} \code{C250} \code{C550}
#' \code{CARE} \code{CCMY} \code{CG2M} \code{CHCO} \code{CHRX} \code{CM10}
#' \code{CMGR} \code{CMML} \code{COML} \code{CP20} \code{CPAR} \code{CPRA}
#' \code{DC13} \code{FRAG} \code{G05I} \code{G10I} \code{GCHG} \code{GCMY}
#' \code{GRG1} \code{GRGR} \code{GRPC} \code{GT05} \code{GT10} \code{GT12}
#' \code{GT15} \code{GT18} \code{GT24} \code{GT25} \code{GT2X} \code{GT30}
#' \code{GT38} \code{GT50} \code{GT53} \code{GT5C} \code{GT5D} \code{LT12}
#' \code{LT15} \code{LT18} \code{LT1M} \code{LT25} \code{LT40} \code{M2GR}
#' \code{M2ML} \code{MCM3} \code{MM2C} \code{MM2G} \code{MMDW} \code{MMML}
#' \code{MT10} \code{NORM} \code{NOTK} \code{ORDI} \code{OTHE} \code{PCM1}
#' \code{PCMY} \code{PHYT} \code{PP25} \code{PP51} \code{PP52} \code{PPOL}
#' \code{PRAB} \code{PROB} \code{PTC0} \code{PTC2} \code{PTC3} \code{PTCT}
#' \code{SQC0} \code{SQCU} \code{SQCY} \code{SQG5} \code{TOM1} \code{TOM2}
#' \code{TOM3} \code{TOM4} \code{TOM5} \code{TOM6} \code{TOM7} \code{TOM9}
#' \code{TOMX} \code{V125} \code{X010} \code{X01K} \code{X05C} \code{X100}
#' \code{X105} \code{X106} \code{X120} \code{X125} \code{X150} \code{X160}
#' \code{X180} \code{X18C} \code{X20P} \code{X250} \code{X25P} \code{X37P}
#' \code{X459} \code{X512} \code{X520} \code{X550} \code{X55P} \code{XA1K}
#' \code{XARE} \code{XARP} \code{XARS} \code{XC25} \code{XCM3} \code{XCOP}
#' \code{XFML} \code{XFRG} \code{XFRP} \code{XFRS} \code{XIMG} \code{XPEA}
#' \code{XPEE} \code{XPIX} \code{XRIF}} 
#' \item{METHOD}{a factor with
#' levels \code{ACID} \code{CPRO} \code{GRAV} \code{HNPK} \code{HVLQ}
#' \code{IMAG} \code{NOTK} \code{NULL} \code{OPPF} \code{OTHE} \code{POLS}
#' \code{SIEV}} 
#' \item{TYPE}{a factor with levels \code{C0P0}
#' \code{CONC} \code{INFL} \code{NOTK} \code{OTHE} \code{SOIL}}}
#' @keywords datasets
#' @examples
#' 
#' 
#' data(paleofiredata)
#' ## maybe str(paleofiredata) ; plot(paleofiredata) ...
#' 
#' 
NULL





#' GCD sites information
#' 
#' Sites description and features
#' 
#' \describe{l12 levels}\code{0= Water} \cr \code{1= Boreal forest} \cr
#' \code{2= Desert vegetation} \cr \code{3= Grassland and dry shrubland} \cr
#' \code{4= Savannas abd dry woodlands} \cr \code{5= Temperate forest}\cr
#' \code{6= Tropical forest}\cr \code{7= Tundra}\cr \code{8= Warm temperate}\cr
#' \code{9= Warm desert}\cr \code{10= Cold desert}\cr
#' 
#' \describe{rf99 levels} \code{0= Water} \cr \code{1= Tropical Evergreen
#' Forest/Woodland}\cr \code{2= Tropical Deciduous Forest/Woodland}\cr \code{3=
#' Temperate Broadleaf Evergreen Forest/Woodland}\cr \code{4= Temperate
#' Needleleaf Evergreen Forest/Woodland}\cr \code{5= Temperate Deciduous
#' Forest/Woodland}\cr \code{6= Boreal Evergreen Forest/Woodland}\cr \code{7=
#' Boreal Deciduous Forest/Woodland}\cr \code{8= Evergreen/Deciduous Mixed
#' Forest/Woodland}\cr \code{9= Savanna}\cr \code{10= Grassland/Steppe}\cr
#' \code{11= Dense Shrubland}\cr \code{12= Open Shrubland}\cr \code{13=
#' Tundra}\cr \code{14= Desert}\cr \code{15= Polar Desert/Rock/Ice}\cr
#' 
#' @name paleofiresites
#' @docType data
#' @format A data frame with 881 observations on the following 17 variables.
#' \describe{ \item{id_site}{a numeric vector}
#' \item{id_site_old}{a numeric vector} \item{pref_units}{a
#' factor with levels \code{\%125} \code{\%DWT} \code{\%TOF} \code{\%WTO}
#' \code{100P} \code{125V} \code{5015} \code{7PRA} \code{8POS} \code{ABSC}
#' \code{ARCC} \code{AREA} \code{ARPG} \code{BCCT} \code{C010} \code{C01K}
#' \code{C100} \code{C120} \code{C125} \code{C140} \code{C150} \code{C250}
#' \code{C550} \code{CARE} \code{CCMY} \code{CG2M} \code{CHCO} \code{CHRX}
#' \code{CM10} \code{CMGR} \code{CMML} \code{COML} \code{CP20} \code{CPAR}
#' \code{CPRA} \code{DC13} \code{FRAG} \code{G05I} \code{G10I} \code{GCHG}
#' \code{GCMY} \code{GRG1} \code{GRGR} \code{GRPC} \code{GT05} \code{GT10}
#' \code{GT12} \code{GT15} \code{GT18} \code{GT24} \code{GT25} \code{GT2X}
#' \code{GT30} \code{GT38} \code{GT50} \code{GT53} \code{GT5C} \code{GT5D}
#' \code{LT12} \code{LT15} \code{LT18} \code{LT1M} \code{LT25} \code{LT40}
#' \code{M2GR} \code{M2ML} \code{MCM3} \code{MM2C} \code{MM2G} \code{MMDW}
#' \code{MMML} \code{MT10} \code{NORM} \code{NOTK} \code{ORDI} \code{OTHE}
#' \code{PCM1} \code{PCMY} \code{PHYT} \code{PP25} \code{PP51} \code{PP52}
#' \code{PPOL} \code{PRAB} \code{PROB} \code{PTC0} \code{PTC2} \code{PTC3}
#' \code{PTCT} \code{SQC0} \code{SQCU} \code{SQCY} \code{SQG5} \code{TOM1}
#' \code{TOM2} \code{TOM3} \code{TOM4} \code{TOM5} \code{TOM6} \code{TOM7}
#' \code{TOM9} \code{TOMX} \code{V125} \code{X010} \code{X01K} \code{X05C}
#' \code{X100} \code{X105} \code{X106} \code{X120} \code{X125} \code{X150}
#' \code{X160} \code{X180} \code{X18C} \code{X20P} \code{X250} \code{X25P}
#' \code{X37P} \code{X459} \code{X512} \code{X520} \code{X550} \code{XA1K}
#' \code{XARE} \code{XARP} \code{XARS} \code{XC25} \code{XCM3} \code{XCOP}
#' \code{XFML} \code{XFRG} \code{XFRP} \code{XFRS} \code{XIMG} \code{XPEA}
#' \code{XPEE} \code{XPIX} \code{XRIF}} \item{site_name}{a character
#' vector} \item{lat}{a numeric vector} \item{long}{a numeric
#' vector} \item{elevation}{a numeric vector} \item{country}{a
#' character vector} \item{continent}{a factor with levels
#' \code{Africa} \code{Antarctica} \code{Asia} \code{Australia} \code{Europe}
#' \code{North America} \code{South America}} \item{num_dating}{a
#' numeric vector} \item{min_est_age}{a numeric vector}
#' \item{max_est_age}{a numeric vector} \item{num_samp}{a
#' numeric vector} \item{date_int}{a numeric vector}
#' \item{qtype}{a factor with levels \code{CONC} \code{OTHE}
#' \code{INFL} \code{C0P0} \code{NOTK} \code{SOIL}} \item{l12}{a
#' numeric vector} \item{rf99}{a numeric vector} }
#' @references Ramankutty, N., and J.A. Foley (1999). Estimating historical
#' changes in global land cover: croplands from 1700 to 1992, Global
#' Biogeochemical Cycles 13(4), 997-1027.\cr \cr Levavasseur, G., M. Vrac, D.
#' M. Roche, and D. Paillard. 2012. Statistical modelling of a new global
#' potential vegetation distribution. Environmental Research Letters 7:044019.
#' @keywords datasets
#' @examples
#' 
#' 
#' data(paleofiresites)
#' ## maybe str(paleofiresites) ; plot(paleofiresites) ...
#' 
#' 
NULL



