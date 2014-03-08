\name{paleofiredata}
\alias{paleofiredata}
\docType{data}
\title{
GCD Charcoal data}
\description{
Charcoal series from the Global harcoal Database}
\usage{data(paleofiredata)}
\format{
  A data frame with 134269 observations on the following 4 variables.
  \describe{
    \item{\code{ID_SITE}}{a numeric vector}
    \item{\code{DEPTH}}{a numeric vector}
    \item{\code{EST_AGE}}{a numeric vector}
    \item{\code{QUANTITY}}{a numeric vector}
    \item{\code{METHOD}}{a factor with levels \code{ACID} \code{CPRO} \code{GRAV} \code{HNPK} \code{HVLQ} \code{IMAG}        \code{NOTK} \code{OREC} \code{OTHE} \code{POLS} \code{SIEV} }
        \item{\code{UNIT}}{a factor see \code{\link{paleofiresites}} for details}
    \item{\code{TYPE}}{a factor with levels \code{C0P0} \code{CONC} \code{INFL} \code{NOTK} \code{OTHE} \code{SOIL}}
  }
}
\examples{
data(paleofiredata)
## maybe str(paleofiredata) ; plot(paleofiredata) ...
}
\keyword{datasets}
