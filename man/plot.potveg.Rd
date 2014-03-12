\name{plot.potveg}
\alias{plot.potveg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
plot.potveg
}
\description{
Plot "potveg" object i.e. produce a map by overlaying charcoal sites on potential vegetation maps. Uses ggplot2 syntax.}
\usage{
\method{plot}{potveg}(x, size = 4, palette = NULL, alpha = 0.5, text = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A "potveg object."}
  \item{size}{
Size of the dots on the map.}
  \item{palette}{
A custom color palette can be specified.}
  \item{alpha}{
Transparency of charcoal sites dots}
  \item{text}{
Logical: plot sites as numbers referring to potential vegetation index (text=TRUE) or as points (text=FALSE, default).
}
  \item{\dots}{
...}
}

\value{
A ggplot2 ("gg") object that can be further modified (see example) 
}

\author{
O. Blarquez}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{potveg}}
}
\examples{

# #not run
# require(paleofire)
# ID=pfSiteSel(c(1:10))
# obj=potveg(ID,classif="l12")
# plot(obj)
# 
# #Return a ggplot object 
# require(ggplot2)
# p=plot(obj,text=TRUE,alpha=1)
# p+ggtitle("My title")

}

