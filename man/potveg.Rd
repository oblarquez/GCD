\name{potveg}
\alias{potveg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
potveg}
\description{
Retrieve potential vegetation types based on charcoal sites location}
\usage{
potveg(ID, classif = "RF99", buffer = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ID}{
An object of the class "pfSiteSel"
}
  \item{classif}{
Potential vegetation to be used: "RF99" in reference to Ramankutty and Foley (1999) or "L12" in reference to Levavasseur et al. 2012.
}
  \item{buffer}{
Distance in m that defines a radius around each site to calculate the dominant vegetation type by kernel density estimation.
}
}

\value{
An object of the class "potveg" i.e. a list contaning two data frames: "site_data" for charcoal sites and associated potential vegetation type, "map" data frame used for mapping data. See \code{\link{plot.potveg}} for details.
}
\references{
Ramankutty, N., and J.A. Foley (1999). Estimating historical changes in global land cover: croplands from 1700 to 1992, Global Biogeochemical Cycles 13(4), 997-1027.\cr \cr
  Levavasseur, G., M. Vrac, D. M. Roche, and D. Paillard. 2012. Statistical modelling of a new global potential vegetation distribution. Environmental Research Letters 7:044019.}
  
\author{
O. Blarquez}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plot.potveg}}}

\examples{

# not run
# require(paleofire)
# ID=pfSiteSel(c(1:10))
# obj=potveg(ID,classif="L12")
# head(obj$site_data)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
