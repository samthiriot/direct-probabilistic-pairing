% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_loading.R
\name{underscore_to_varmod}
\alias{underscore_to_varmod}
\title{Replace underscores by variables and modalities}
\usage{
underscore_to_varmod(vec, vars)
}
\arguments{
\item{vec}{a vector of strings}

\item{vars}{a vector of variable names}
}
\value{
a vector of strings
}
\description{
In a vector like c("1_A","1_B", "2_A", "2_B"),
given variable names c("x","y"),
returns a vector c("x=1&y=A","x=1&y=B", "x=2&y=A", "x=2&y=B")
}
\author{
Samuel Thiriot <samuel.thiriot@res-ear.ch>
}
\keyword{internal}
