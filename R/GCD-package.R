

#' GCD: Global Charcoal Database data
#' 
#' The GCD package provides Global Charcoal Database data updated at regular
#' intervals to be used in cunjuction with the paleofire package.
#' 
#' \tabular{ll}{ Package: \tab GCD\cr Type: \tab Package\cr Version: \tab
#' 3.0.1\cr Date: \tab 2014-04-30\cr License: \tab GPL (>=2)\cr }
#' 
#' @name GCD-package
#' @aliases GCD GCD-package
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
NULL





#' Internal GCD Data
#' 
#' Internal GCD Data
#' 
#' 
#' @aliases Internal PNV_L12 PNV_RF99 pub pub_key
#' @name GCD-internal
NULL





#' GCD Charcoal data
#' 
#' Charcoal series from the Global Charcoal Database
#' 
#' 
#' @name paleofiredata
#' @docType data
#' @format A data frame with 134269 observations on the following 4 variables.
#' \describe{ \item{ID_SITE}{a numeric vector} \item{DEPTH}{a
#' numeric vector} \item{EST_AGE}{a numeric vector}
#' \item{QUANTITY}{a numeric vector} \item{METHOD}{a factor
#' with levels \code{ACID} \code{CPRO} \code{GRAV} \code{HNPK} \code{HVLQ}
#' \code{IMAG} \code{NOTK} \code{OREC} \code{OTHE} \code{POLS} \code{SIEV} }
#' \item{UNIT}{a factor see \code{\link{paleofiresites}} for details}
#' \item{TYPE}{a factor with levels \code{C0P0} \code{CONC} \code{INFL}
#' \code{NOTK} \code{OTHE} \code{SOIL}} }
#' @keywords datasets
#' @examples
#' 
#' data(paleofiredata)
#' ## maybe str(paleofiredata) ; plot(paleofiredata) ...
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
#' @format A data frame with 736 observations on the following 25 variables.
#' \describe{ \item{id_site}{a numeric vector}
#' \item{site_name}{Sites names} \item{lat}{a numeric vector}
#' \item{long}{a numeric vector} \item{elev}{a numeric vector}
#' \item{pref_units}{a factor with levels \code{\%DWT} \code{\%TOF}
#' \code{\%WTO} \code{100P} \code{125\%} \code{125V} \code{5015} \code{7PRA}
#' \code{8POS} \code{ABSC} \code{ARCC} \code{AREA} \code{ARPG} \code{BCCT}
#' \code{C010} \code{C100} \code{C120} \code{C125} \code{C140} \code{C150}
#' \code{C250} \code{C550} \code{CARE} \code{CCMY} \code{CG2M} \code{CHCO}
#' \code{CHRX} \code{CM10} \code{CMGR} \code{CMML} \code{COML} \code{CP20}
#' \code{CPAR} \code{CPRA} \code{DC13} \code{FRAG} \code{G05I} \code{GCHG}
#' \code{GCMY} \code{GRGR} \code{GRPC} \code{GT05} \code{GT10} \code{GT12}
#' \code{GT15} \code{GT18} \code{GT24} \code{GT25} \code{GT2X} \code{GT30}
#' \code{GT38} \code{GT50} \code{GT53} \code{GT5C} \code{GT5D} \code{LT12}
#' \code{LT15} \code{LT18} \code{LT1M} \code{LT25} \code{LT40} \code{M2GR}
#' \code{M2ML} \code{MCM3} \code{MM2C} \code{MM2G} \code{MMDW} \code{MMML}
#' \code{MT10} \code{ORDI} \code{OTHE} \code{PCM1} \code{PCMY} \code{PHYT}
#' \code{PP25} \code{PP51} \code{PP52} \code{PPOL} \code{PRAB} \code{PROB}
#' \code{PTC0} \code{PTC2} \code{PTC3} \code{PTCT} \code{SQC0} \code{SQCU}
#' \code{SQCY} \code{SQG5} \code{TOM1} \code{TOM2} \code{TOM3} \code{TOM4}
#' \code{TOM5} \code{TOM6} \code{TOM7} \code{TOM9} \code{TOMX} \code{V125}
#' \code{X01K} \code{X105} \code{X106} \code{X120} \code{X125} \code{X150}
#' \code{X160} \code{X180} \code{X18C} \code{X20P} \code{X250} \code{X25P}
#' \code{X37P} \code{X459} \code{X512} \code{X520} \code{X550} \code{X55P}
#' \code{XA1K} \code{XARE} \code{XARP} \code{XARS} \code{XC25} \code{XCM3}
#' \code{XCOP} \code{XFML} \code{XFRG} \code{XFRP} \code{XFRS} \code{XIMG}
#' \code{XPEA} \code{XPEE} \code{XPIX} \code{XRIF}} \item{biome}{a
#' numeric vector} \item{id_region}{a factor with levels \code{AFRI}
#' \code{ASIA} \code{AUST} \code{CENA} \code{ENA0} \code{EURO} \code{RUSS}
#' \code{SSA0} \code{TROP} \code{TSA0} \code{WNA0}} \item{id_country}{a
#' factor with levels \code{ALGE} \code{ARGE} \code{AUST} \code{BOLI}
#' \code{BRAZ} \code{BULG} \code{BURU} \code{CANA} \code{CHIL} \code{CHIN}
#' \code{COLO} \code{COST} \code{CROA} \code{DENM} \code{DOMR} \code{ECUA}
#' \code{EL S} \code{ETHI} \code{FIJI} \code{FINL} \code{FRAN} \code{GEOR}
#' \code{GERM} \code{HAIT} \code{HOND} \code{HUNG} \code{INDI} \code{INDO}
#' \code{ITAL} \code{JAPA} \code{JORD} \code{KENY} \code{KYRG} \code{MADA}
#' \code{MEXI} \code{MONG} \code{NEWC} \code{NEWZ} \code{NICA} \code{NIGE}
#' \code{NORW} \code{OCEA} \code{PALA} \code{PANA} \code{PAPU} \code{PERU}
#' \code{RUSS} \code{SLOV} \code{SLVE} \code{SOAF} \code{SOLO} \code{SPAI}
#' \code{SWED} \code{SWIT} \code{SYRI} \code{TANZ} \code{THAI} \code{TRKY}
#' \code{UGAN} \code{UK00} \code{UKRA} \code{US00} \code{VANU}}
#' \item{id_site_type}{a factor with levels \code{CEST} \code{COAS}
#' \code{CSLT} \code{FLUV} \code{HOLL} \code{LACU} \code{LCIR} \code{LDRA}
#' \code{LEXP} \code{LFLU} \code{LGLA} \code{LGMC} \code{LKET} \code{LMOR}
#' \code{LNAT} \code{LPLY} \code{LSAL} \code{LTEC} \code{LTEK} \code{LTHK}
#' \code{LVOL} \code{MARI} \code{NOTK} \code{OTHE} \code{TBLA} \code{TBOG}
#' \code{TDET} \code{TERR} \code{TFBU} \code{TFEN} \code{TFLO} \code{TFLP}
#' \code{TGSW} \code{TLIT} \code{TLTP} \code{TLUS} \code{TMIR} \code{TMOR}
#' \code{TMSH} \code{TMSP}} \item{water_depth}{a numeric vector}
#' \item{id_basin_size}{a factor with levels \code{LARG} \code{MED}
#' \code{MEDI} \code{NOTA} \code{NOTK} \code{SMAL} \code{VEGL} \code{VELG}
#' \code{vESM} \code{VESM}} \item{id_catch_size}{a factor with levels
#' \code{LARG} \code{MED} \code{MEDI} \code{NOTA} \code{NOTK} \code{Smal}
#' \code{SMAL}} \item{id_land_desc}{a factor with levels \code{BARA}
#' \code{COAS} \code{COPL} \code{DIUP} \code{DUNE} \code{HUDI} \code{ISUP}
#' \code{LOPL} \code{LORI} \code{LRVA} \code{MARI} \code{MEAD} \code{MOUN}
#' \code{NOTK} \code{OTHE} \code{ROUP} \code{UPPL}}
#' \item{dating_type}{a factor with levels \code{AMS0} \code{CALO}
#' \code{CALS} \code{DCAL} \code{NOTK} \code{OTHE} \code{RADI}}
#' \item{min_est_age}{a numeric vector} \item{max_est_age}{a
#' numeric vector} \item{num_dating}{a numeric vector}
#' \item{age_model}{a factor with levels \code{AUTH} \code{DCAL}
#' \code{DIGI} \code{LINE} \code{NOMO} \code{NOTK} \code{OTHE} \code{POLY}
#' \code{SMSP}} \item{data_source}{a factor with levels \code{AUTH}
#' \code{DIGI} \code{NOTK} \code{RAW0}} \item{qtype}{a factor with
#' levels \code{C0P0} \code{CONC} \code{INFL} \code{OTHE} \code{SOIL}}
#' \item{l12}{a numeric vector} \item{rf99}{a numeric vector}
#' \item{num_samp}{a numeric vector} \item{date_int}{a numeric
#' vector}
#' 
#' }
#' @references Ramankutty, N., and J.A. Foley (1999). Estimating historical
#' changes in global land cover: croplands from 1700 to 1992, Global
#' Biogeochemical Cycles 13(4), 997-1027.\cr \cr Levavasseur, G., M. Vrac, D.
#' M. Roche, and D. Paillard. 2012. Statistical modelling of a new global
#' potential vegetation distribution. Environmental Research Letters 7:044019.
#' @keywords datasets
#' @examples
#' 
#' data(paleofiresites)
#' ## maybe str(paleofiresites) ; plot(paleofiresites) ...
#' 
NULL


#' Charcoal units
#' 
#' Charcoal units used in GCD
#' 
#' 
#' @name charcoal_units
#' @docType data
#' @format A data frame with 169 observations on the following 4 variables.
#' 
#' \describe{ \item{unit}{a factor with levels \code{%125} \code{%DWT}
#' 
#' \code{%TOF} \code{%WTO} \code{100P} \code{1012} \code{1220} \code{1422}
#' \code{1424} \code{3869} \code{5015} \code{5075} \code{6914} \code{7510}
#' \code{7738} \code{7PRA} \code{8POS} \code{ABSC} \code{ARCC} \code{AREA}
#' \code{ARPG} \code{BCCT} \code{C004} \code{C010} \code{C01K} \code{C040}
#' \code{C100} \code{C120} \code{C125} \code{C140} \code{C150} \code{C180}
#' \code{C250} \code{C65X} \code{CARE} \code{CCMY} \code{CG2M} \code{CHCO}
#' \code{CHRX} \code{CM10} \code{CMGR} \code{CMML} \code{COML} \code{CP20}
#' \code{CPAR} \code{CPRA} \code{DC13} \code{FRAG} \code{G05I} \code{G10I}
#' \code{G250} \code{GCHG} \code{GCMY} \code{GRG1} \code{GRGR} \code{GRPC}
#' \code{GT05} \code{GT10} \code{GT12} \code{GT15} \code{GT18} \code{GT1M}
#' \code{GT24} \code{GT25} \code{GT2X} \code{GT30} \code{GT38} \code{GT50}
#' \code{GT53} \code{GT5C} \code{LT12} \code{LT13} \code{LT18} \code{LT1M}
#' \code{LT25} \code{LT40} \code{M2GR} \code{M2ML} \code{MCM3} \code{MM2C}
#' \code{MM2G} \code{MMDW} \code{MMML} \code{MT10} \code{MULT} \code{NOTK}
#' \code{ORDI} \code{OTHE} \code{PCM1} \code{PCMY} \code{PHYT} \code{PP25}
#' \code{PP51} \code{PP52} \code{PPML} \code{PPOL} \code{PRAB} \code{PROB}
#' \code{PTC0} \code{PTC2} \code{PTC3} \code{PTCT} \code{PX25} \code{SQC0}
#' \code{SQCU} \code{SQCY} \code{SQG1} \code{SQG5} \code{SQL5} \code{TOCA}
#' \code{TOM1} \code{TOM2} \code{TOM3} \code{TOM4} \code{TOM5} \code{TOM6}
#' \code{TOM7} \code{TOM8} \code{TOM9} \code{TOMX} \code{TOTA} \code{UCMY}
#' \code{V025} \code{V100} \code{V125} \code{V255} \code{V501} \code{X01K}
#' \code{X105} \code{X106} \code{X120} \code{X125} \code{X150} \code{X15G}
#' \code{X160} \code{X180} \code{X18C} \code{X20P} \code{X250} \code{X25P}
#' \code{X310} \code{X37P} \code{X459} \code{X500} \code{X50U} \code{X512}
#' \code{X515} \code{X520} \code{X53C} \code{X550} \code{X55P} \code{X55U}
#' \code{XA1K} \code{XARE} \code{XARP} \code{XARS} \code{XC25} \code{XCM3}
#' \code{XCOP} \code{XFML} \code{XFRG} \code{XFRP} \code{XFRS} \code{XIMG}
#' \code{XPEA} \code{XPEE} \code{XPIX} \code{XRIF}} \item{list("qtype")}{a
#' factor with levels \code{C0P0} \code{CONC} \code{INFL} \code{NOTK}
#' \code{OTHE} \code{SOIL}} \item{list("type")}{a factor with levels
#' \code{(>125 ?m)} \code{(100-125 ?m)} \code{(50 - 75 ?m)} \code{(75 - 100
#' ?m)} \code{# frag/cm^3 x 1000 (point count)} \code{# fragments <120?m cm-2
#' yr-1 (influx)} \code{# fragments <120?m cm-3 (concentration)} \code{#
#' fragments <125 um percentage of pollen sum} \code{# fragments <40?m
#' (concentration)} \code{# fragments >10?m cm-3 (concentration) --} \code{#
#' fragments >100?m cm-3 (concentration)} \code{# fragments >1000?m cm-2 yr-1
#' (influx)} \code{# fragments >1000?m cm-3 (concentration)} \code{# fragments
#' >125?m cm-2 yr-1 (influx)} \code{# fragments >125?m cm-3 (concentration)}
#' \code{# fragments >125?m g-1 peat} \code{# fragments >150?m cm-3
#' (concentration)} \code{# fragments >160?m cm-2 yr-1 (influx)} \code{#
#' fragments >180?m cm-2 yr-1 (influx)} \code{# fragments >250?m cm-2 yr-1
#' (influx)} \code{# fragments >250?m cm-3 (concentration)} \code{# fragments
#' >250?m m2 yr-1 (influx)} \code{# fragments >40?m (concentration)} \code{#
#' fragments >500 ?m/ cm2/ yr} \code{# fragments >75?m2 (or >10?m) cm-2 yr-1
#' (influx)} \code{# fragments g-1 peat} \code{# fragments:pollen (C:P ratio)}
#' \code{# fragments:pollen (C:P ratio) (>20um)} \code{# framents / ml} \code{#
#' of fragments >250 (no./cm2/yr) (influx)} \code{# of fragments between 120 to
#' 250 um (cm2/cm2/yr)} \code{# of pieces/cm^2/yr} \code{# of pixels per
#' 0.05cm3 at 20X magnification >180um (mm2/cm3)} \code{% dry weight} \code{%
#' of charcoal (sieved >125 um)} \code{% of total pollen sum <40um charcoal
#' (concentration)} \code{% total organic fraction} \code{< 25 um /10
#' Lycopodium} \code{<100 um conc (long axis frag / 50 exotic microspheres)}
#' \code{<10um per cm3 (pt count method of Clark 1982) % pollen slide char}
#' \code{<180 um x 10^4 relective graminoid cuticle area} \code{<25 um
#' concentration (% pollen sum)} \code{<50 ?m (conc)} \code{<50um (pt count
#' method of Clark 1982) % pollen slide char} \code{?m2/g} \code{?m2/ml}
#' \code{?m2/pollen concentration (area:pollen ratio)} \code{> 0.2 mm
#' presence/absence} \code{> 20 um (% conc of total pollen sum) *Same as CP20
#' ?} \code{> 25 um/10 Lycopodium} \code{> 5 ?m (influx)} \code{>10 um influx
#' (grains/cm2/a) (Total from 10-50, 50-100, >100 um)} \code{>100 ?m}
#' \code{>100 um conc (long axis frag / 50 exotic microspheres)} \code{>100um
#' fragments / gram dry sample --POLS} \code{>10um ---conc} \code{>10um long
#' (particles x 10^3 x g^-1)} \code{>120 ?m % Total Pollen Sum (Pollen slide)}
#' \code{>150 um (oridinal scale 0 to 8)} \code{>150um mm2 / gram} \code{>180
#' um framents/ml (concentration)} \code{>180um charcoal conc. (cm^2 cm^3)}
#' \code{>20um point count (1000s/cm^3)} \code{>24 ?m} \code{>25 um fragments
#' %charcoal particles / pollen sum} \code{>2um and <150um particles cm-2 yr-1
#' (pollens slide influx)} \code{>30 ?m} \code{>37 um particles on pollen
#' slides} \code{>38 um < 63 um (mm2/cm-2/year-1)} \code{>45 - < 95um
#' (um2/cm2)} \code{>5-50um ---} \code{>50 and <125um particles/gram
#' (concentration) from pollen slide} \code{>50 um-2} \code{>50?m} \code{>50um
#' (pt count method of Clark 1982) % pollen slide char} \code{>53 ?m}
#' \code{>53->500um (count) 0.5 ml --} \code{>5um (conc)} \code{0-25 ?m/ml}
#' \code{10-150 um2 cm3} \code{10-150 um2 cm3 (conc)} \code{100-150 ?m/ml}
#' \code{12-20 ?m} \code{125-250um conc(part/cm2/yr) -} \code{125-250um
#' frag/ml} \code{14-24 ?m} \code{1461-2230 micrometers^2} \code{150-500?m
#' (conc)} \code{25-50 ?m/ml} \code{25-80 ?m % Total Pollen Sum} \code{30-100
#' um (conc)} \code{384-692 micrometers^2} \code{5 - 150 um charcoal fragments
#' (Conc)} \code{5-150 ?m % Total Pollen Sum} \code{5-200 ?m ---(part/cm3)
#' concentration} \code{5-50?m (conc)---} \code{5-50um (% total pollen sum)}
#' \code{50-100 ?m/ml} \code{50-150 um (part/cm3)} \code{50-200 ?m % Total
#' Pollen Sum (particles cm-3))} \code{65-179 um conc (mm2/cm3)} \code{692-1461
#' micrometers^2} \code{7-point relative abundance scale} \code{77-384
#' micrometers^2} \code{8 point ordinal scale for charcoal >150um} \code{area
#' charcoal (mm2/gr)} \code{Area charcoal X 10^3/ml} \code{area/cubic cm}
#' \code{BC concentration % -} \code{burnt phytoliths on microcharcoal pollen
#' slides >25um} \code{Carbonised particles (20-60 micrometers) /ml} \code{Char
#' flux (pols)} \code{charcoal >180 um (check with A-L Daniau)??}
#' \code{Charcoal Concentrate} \code{Charcoal concentration * 1000}
#' \code{Charcoal concentration * 10000} \code{charcoal counted on slides,
#' paticles greater than 15micro-m} \code{Charcoal counts per sq. cm per year
#' times 100.} \code{charcoal part Ided on pollen slides on abundance scale}
#' \code{charcoal particles / cm3 * 1000} \code{Charcoal Probability (x100)}
#' \code{Charcoal to Pollen Ratio * 1000} \code{cm^2/cm^3 --} \code{cm?/ml
#' (concentration)} \code{cm2 / gram (conc)} \code{cm2/cm-2/ yr-1}
#' \code{cm2/cm3 (point count method of Clark 1982) on pollen slide char}
#' \code{cm2/cm3 *10} \code{conc(part 5-250 micrometer/cm3)} \code{cumulative
#' probability (95 % CI) for alluvial fan soil charcoal} \code{Delta 13C soil
#' charcoal} \code{for site 454} \code{frag/cm3 (conc)} \code{frag/cm3 (conc)
#' (>25?m) -} \code{frag/gram --} \code{Fragments} \code{fragments cm-2 yr-1
#' (influx) -- pollen slide --} \code{fragments cm-2 yr-1 (influx) -- sieved
#' --} \code{g charcoal > 2 mm/kg soil} \code{grains/cm^2/yr}
#' \code{grains/cm3/year (point count method of Clark 1982) on pollen slide
#' char} \code{grams charcoal per 100 gm (10M) Gravimetric - Winkler}
#' \code{micrometers^2/cm^2/yr} \code{mm^2/cm^3 charcoal point count} \code{mm2
#' /g (dry sediment) (concentration <0.25mm)} \code{mm2 cm-2 ky-1 (influx)}
#' \code{mm2 cm-2 yr-1 (influx)} \code{mm2 cm-2 yr-1 (influx) -- pollen slide
#' -} \code{mm2 cm-2 yr-1 (influx) -- sieved ---} \code{mm2 cm3
#' (concentration)} \code{mm2 g-1} \code{mm2 per 100g dry weight} \code{mm2/cm3
#' >4um char from pollen slide} \code{mm2/ml} \code{Multiple types or size
#' ranges on same sample} \code{Not known} \code{Number of Particles > 6
#' microns} \code{ordinal scale (Oz charcoal standardized)} \code{other}
#' \code{Oxidation Resistant Elemental Carbon OREC % of dry wieght} \code{parts
#' per million} \code{Percent (carbon) of pollen sum} \code{point count (1000
#' grains/gm)} \code{point count (Clark method)(charcoal/Eucalyptus
#' concentration X10)} \code{Total Charcoal when multiple fragment size counts
#' exist} \code{Total concentration (mm2 cm3) sieved--} \code{um2.cm-3.
#' (Micrometers squared per centimeter cubed)} \code{x10-3 grains/gram-1
#' (>20um)}} \item{\code{code}}{a numeric vector} } }
#' 
#' data(charcoal_units)
#' 
#' datasets }
NULL

#' Dating type
#' 
#' Type of datations used in GCD
#' 
#' %% ~~ If necessary, more details than the __description__ above ~~
#' 
#' @name dating_type
#' @docType data
#' @format A data frame with 6 observations on the following 2 variables.
#' \describe{ \item{list("dating_type")}{a factor with levels \code{CALO}
#' \code{CALS} \code{DCAL} \code{NOTK} \code{OTHE} \code{RADI}}
#' \item{list("type")}{a factor with levels \code{calibrated by synth. coord.}
#' \code{calibrated years BP originally} \code{direct calibration} \code{not
#' known} \code{radiocarbon years BP} \code{see notes}} }
#' @references %% ~~ possibly secondary sources and usages ~~
#' @source %% ~~ reference to a publication or URL from which the data were
#' obtained ~~
#' @keywords datasets
#' @examples
#' 
#' data(dating_type)
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
#' \describe{ \item{list("id_method")}{a factor with levels \code{ACID}
#' \code{CPRO} \code{GRAV} \code{HNPK} \code{HVLQ} \code{IMAG} \code{NOTK}
#' \code{OPPF} \code{OTHE} \code{POLS} \code{SIEV} \code{SIPO} \code{THSL}}
#' \item{list("method")}{a factor with levels \code{Acidification of sample
#' using gas chromatography to measure elemental carbon (Verardo etal 1990)}
#' \code{charcoal part Ided as opaque phytoclasts/pyrofusinite in palynofacies
#' anlaysis} \code{Charcoal part. Ided in thin slides (soil micromorphology)}
#' \code{Charcoal particles identified by imaging software} \code{Charcoal
#' separated by heavy liquid preparation} \code{Cumulative probability (95%
#' confidence interval) alluvial soil charcoal} \code{GRAVIMETRIC chemical
#' assay (Winkler method)} \code{Hand picked charcoal from soil samples}
#' \code{Not known} \code{Other} \code{Pollen slide} \code{Sieved} \code{Sieved
#' + Pollslide}} \item{list("code")}{a numeric vector} }
#' @keywords datasets
#' @examples
#' 
#' data(method)
#' 
NULL



