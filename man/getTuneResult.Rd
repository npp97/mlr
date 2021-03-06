% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getTuneResult.R
\name{getTuneResult}
\alias{getTuneResult}
\title{Returns the optimal hyperparameters and optimization path after training.}
\usage{
getTuneResult(object)
}
\arguments{
\item{object}{[\code{\link{WrappedModel}}]\cr
Trained Model created with \code{\link{makeTuneWrapper}}.}
}
\value{
[\code{\link{TuneResult}}].
}
\description{
Returns the optimal hyperparameters and optimization path after training.
}
\seealso{
Other tune: \code{\link{TuneControl}},
  \code{\link{getNestedTuneResultsOptPathDf}},
  \code{\link{getNestedTuneResultsX}},
  \code{\link{makeModelMultiplexerParamSet}},
  \code{\link{makeModelMultiplexer}},
  \code{\link{makeTuneWrapper}}, \code{\link{tuneParams}},
  \code{\link{tuneThreshold}}
}
