% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate.R
\name{matching.generate.resize_population}
\alias{matching.generate.resize_population}
\title{Takes an original sample, and returns \code{count.required} entities 
selected according to the weight column \code{colname.weight} of this sample (if any).}
\usage{
matching.generate.resize_population(sample, count.required, colname.weight)
}
\arguments{
\item{sample}{the sample to use for loading}

\item{count.required}{the count of entities expected as a result}

\item{colnaœ.weight}{a string describing the column to be used as a weight in the sample}
}
\description{
If the population is too small, it will be made bigger by replication of entities. 
If the population is too big, only some entities will be selected depending to weights. 
If the population is exactly of the right size, then it will be entirely kept as 
in the original sample.
}
\details{
The actual sampling is entirely delegated to the \link{dplyr}{sample_n} function.
}
\author{
Samuel Thiriot <samuel.thiriot@res-ear.ch>
}
\keyword{internal}
