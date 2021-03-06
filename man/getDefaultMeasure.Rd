% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Measure.R
\name{getDefaultMeasure}
\alias{getDefaultMeasure}
\title{Get default measure.}
\usage{
getDefaultMeasure(x)
}
\arguments{
\item{x}{[\code{character(1)} | \code{\link{Task}} | \code{\link{TaskDesc}} | \code{\link{Learner}}]\cr
Task type, task, task description or a learner.}
}
\value{
[\code{\link{Measure}}].
}
\description{
Get the default measure for a task type, task, task description or a learner.
Currently these are:
 \tabular{ll}{
   classif     \tab mmce\cr
   regr        \tab mse\cr
   cluster     \tab db\cr
   surv        \tab cindex\cr
   costsens    \tab mcp\cr
   multilabel  \tab hamloss\cr
}
}

