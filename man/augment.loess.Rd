% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats-loess-tidiers.R
\name{augment.loess}
\alias{augment.loess}
\alias{loess_tidiers}
\title{Tidy a(n) loess object}
\usage{
\method{augment}{loess}(x, data = stats::model.frame(x),
  newdata = NULL, ...)
}
\arguments{
\item{x}{A \code{loess} objects returned by \code{\link[stats:loess]{stats::loess()}}.}

\item{data}{A \code{\link[=data.frame]{data.frame()}} or \code{\link[tibble:tibble]{tibble::tibble()}} containing the original
data that was used to produce the object \code{x}. Defaults to
\code{stats::model.frame(x)} so that \code{augment(my_fit)} returns the augmented
original data. \strong{Do not} pass new data to the \code{data} argument.
Augment will report information such as influence and cooks distance for
data passed to the \code{data} argument. These measures are only defined for
the original training data.}

\item{newdata}{A \code{\link[=data.frame]{data.frame()}} or \code{\link[tibble:tibble]{tibble::tibble()}} containing all
the original predictors used to create \code{x}. Defaults to \code{NULL}, indicating
that nothing has been passed to \code{newdata}. If \code{newdata} is specified,
the \code{data} argument will be ignored.}

\item{...}{Arguments passed on to \code{stats:::predict.loess}
\describe{
  \item{object}{an object fitted by \code{loess}.}
  \item{newdata}{an optional data frame in which to look for variables with
    which to predict, or a matrix or vector containing exactly the variables
    needs for prediction.  If missing, the original data points are used.}
  \item{se}{should standard errors be computed?}
  \item{na.action}{function determining what should be done with missing
    values in data frame \code{newdata}.  The default is to predict \code{NA}.}
}}
}
\description{
Tidy summarizes information about the components of a model.
A model component might be a single term in a regression, a single
hypothesis, a cluster, or a class. Exactly what tidy considers to be a
model component varies cross models but is usually self-evident.
If a model has several distinct types of components, you will need to
specify which components to return.
}
\details{
When the modeling was performed with \code{na.action = "na.omit"}
(as is the typical default), rows with NA in the initial data are omitted
entirely from the augmented data frame. When the modeling was performed
with \code{na.action = "na.exclude"}, one should provide the original data
as a second argument, at which point the augmented data will contain those
rows (typically with NAs in place of the new columns). If the original data
is not provided to \code{\link[=augment]{augment()}} and \code{na.action = "na.exclude"}, a
warning is raised and the incomplete rows are dropped.

The \code{.se.fit} column is only present when data is specified via
the \code{data} argument.
}
\examples{

lo <- loess(mpg ~ wt, mtcars)
augment(lo)

# with all columns of original data
augment(lo, mtcars)

# with a new dataset
augment(lo, newdata = head(mtcars))

}
\seealso{
\link{na.action}

\code{\link[=augment]{augment()}}, \code{\link[stats:loess]{stats::loess()}}, \code{\link[stats:predict.loess]{stats::predict.loess()}}
}
\value{
A \code{\link[tibble:tibble]{tibble::tibble()}} with columns:
  \item{.fitted}{Fitted / predicted value.}
  \item{.resid}{Residuals of fitted values. TODO -- document when present. Residuals on which data set?}
  \item{.se.fit}{Standard errors of fitted values. TODO -- prediction or mean interval?}

}
