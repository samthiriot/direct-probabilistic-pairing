% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resolve.R
\name{nan_to_zeros}
\alias{nan_to_zeros}
\title{Replaces NaN by zeros}
\usage{
nan_to_zeros(x, ...)
}
\arguments{
\item{x}{a vector, list or matrix}

\item{...}{ignored}
}
\value{
the same type without NaNs
}
\description{
Replaces NaN by zeros. Used when we might divide 0 
by 0 and know the result should be 0.
}
\keyword{internal}
