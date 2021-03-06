% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats-glm-tidiers.R
\name{augment.glm}
\alias{augment.glm}
\title{Augment a(n) glm object}
\usage{
\method{augment}{glm}(x, data = stats::model.frame(x), newdata = NULL,
  type.predict, type.residuals, ...)
}
\arguments{
\item{x}{A \code{glm} object returned from \code{\link[stats:glm]{stats::glm()}}.}

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

\item{type.predict}{Type of predictions to use when \code{x} is a \code{glm} object.
Passed to \code{\link[stats:predict.glm]{stats::predict.glm()}}.}

\item{type.residuals}{Type of residuals to use when \code{x} is a \code{glm} object.
Passed to \code{\link[stats:residuals.glm]{stats::residuals.glm()}}.}

\item{...}{Additional arguments. Not used. Needed to match generic
signature only. \strong{Cautionary note:} Misspelled arguments will be
absorbed in \code{...}, where they will be ignored. If the misspelled
argument has a default value, the default value will be used.
For example, if you pass \code{conf.lvel = 0.9}, all computation will
proceed using \code{conf.level = 0.95}. Additionally, if you pass
\code{newdata = my_tibble} to an \code{\link[=augment]{augment()}} method that does not
accept a \code{newdata} argument, it will use the default value for
the \code{data} argument.}
}
\description{
This augment method wraps \code{\link[=augment.lm]{augment.lm()}}.
}
\details{
Note that if the weights for any of the observations in the model
are 0, then columns ".infl" and ".hat" in the result will be 0
for those observations.
}
\seealso{
\code{\link[=augment]{augment()}}, \code{\link[=augment.lm]{augment.lm()}}

\code{\link[stats:glm]{stats::glm()}}

Other lm tidiers: \code{\link{augment.lm}},
  \code{\link{glance.glm}}, \code{\link{glance.lm}},
  \code{\link{tidy.glm}}, \code{\link{tidy.lm}}
}
\concept{lm tidiers}
