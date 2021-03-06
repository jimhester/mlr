% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotTuneMultiCritResult.R
\name{plotTuneMultiCritResultGGVIS}
\alias{plotTuneMultiCritResultGGVIS}
\title{Plots multi-criteria results after tuning using ggvis.}
\usage{
plotTuneMultiCritResultGGVIS(res, path = TRUE)
}
\arguments{
\item{res}{[\code{\link{TuneMultiCritResult}}]\cr
Result of \code{\link{tuneParamsMultiCrit}}.}

\item{path}{[\code{logical(1)}]\cr
Visualize all evaluated points (or only the non-dominated pareto front)?
Points are colored according to their location.
Default is \code{TRUE}.}
}
\value{
a ggvis plot object.
}
\description{
Visualizes the pareto front and possibly the dominated points.
}
\examples{
# see tuneParamsMultiCrit
}
\seealso{
Other tune_multicrit: \code{\link{TuneMultiCritControl}},
  \code{\link{plotTuneMultiCritResult}},
  \code{\link{tuneParamsMultiCrit}}
}

