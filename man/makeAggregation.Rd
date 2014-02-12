\name{makeAggregation}
\alias{makeAggregation}
\title{Specifiy your own aggregation of measures}
\usage{
makeAggregation(id, fun)
}
\arguments{
  \item{id}{[\code{character(1)}]\cr Name of the
  aggregation method. (Preferably the same name as the
  generated function)}

  \item{fun}{[\code{function}]\cr A function with following
  signature: \code{function(task, perf.test, perf.train,
  measure, group, pred)} \itemize{ \item{\bold{task}}: task
  (\code{\link{SupervisedTask}}) object
  \item{\bold{perf.test}}: numerical vector of
  \link{performance} results on the test data set
  \item{\bold{perf.train}}. numerical vector of
  \link{performance} results on the train data set
  \item{\bold{measure}}: \code{\link{Measure}} object.
  \item{\bold{group}}: grouping vector \item{\bold{pred}}:
  \code{\link{Prediction}} object }}
}
\value{
\link{Aggregation} object
}
\description{
This is an adavanced feature of mlr. It gives access to
some inner workings so the result might not be compatible
with everything! \cr
}
\examples{
# computes the interquartile range on all performance values
test.iqr = makeAggregation(id="test.iqr",
  fun = function (task, perf.test, perf.train, measure, group, pred) IQR(perf.test))
}
\seealso{
\link{aggregations}, \code{\link{setAggregation}}
}
