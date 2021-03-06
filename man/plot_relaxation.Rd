% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot_relaxation}
\alias{plot_relaxation}
\title{Plots the relaxation parameters}
\usage{
plot_relaxation(sp, colorRef = "darkgray")
}
\arguments{
\item{sp}{a synthetic population, as produced by \code{\link{matching.generate}}.}

\item{colorRef}{the color to be used to plot values passed as parameters (defaults to "darkgray")}
}
\value{
a ggplot ready to display
}
\description{
Plots as a bar chart all the relaxation parameters as they were passed by the user
}
\seealso{
\code{\link{plot.dpp_result}} for the plot of all the results in one call
}
\author{
Samuel Thiriot <samuel.thiriot@res-ear.ch>
}
