\name{pub}
\alias{pub}
\docType{data}
\title{
Publication List
}
\description{
List of GCD publications with DOI and link.
}
\usage{data("pub")}
\format{
  A data frame with 664 observations on the following 4 variables.
  \describe{
    \item{\code{id_pub}}{a numeric vector}
    \item{\code{citation}}{a character vector}
    \item{\code{link}}{web adresses}
    \item{\code{DOI}}{DOI}
  }
}

\examples{
data(pub)
## maybe str(pub) ; plot(pub) ...
}
\keyword{datasets}
