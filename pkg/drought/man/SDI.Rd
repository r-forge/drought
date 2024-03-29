% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SDI.R
\name{SDI}
\alias{SDI}
\title{Compute the standardized drought index}
\usage{
SDI(X, ts = 6, dist = "EmpGrin")
}
\arguments{
\item{X}{The vector of a monthly hydro-climatic variable of n years.}

\item{ts}{is the accumulated time scale.}

\item{dist}{is distribution funciton.}
}
\value{
The univariate and multivariate drought index of different time scale from both the empirical and gamma distribution
}
\description{
Based on the vector of monthly variables, the standardized drought 
index is computed. Note here the standardized precipitation index (SPI) is used as 
the example of the drought index in the univariate case. 
It also represents other drought indices computed in the similar way as SPI.
}
\details{
Apart from the standardized drought index, the percentile (probability) is also provided,
}
\examples{
X=runif(120, min = 0, max = 100)
fit<-SDI(X,ts=3) # Compute the 3 month drought index
fit$SDI # Get the empirical drought index 
z=matrix(t(fit$SDI),ncol=1)
plot(z, type="l", col=1, lwd=2, lty=1, xlim=c(0,120),xlab="Time",ylab="SDI")
}

