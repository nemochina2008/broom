% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mass-rlm-tidiers.R
\name{augment.rlm}
\alias{augment.rlm}
\title{Augment a(n) rlm object}
\usage{
\method{augment}{rlm}(x, data = stats::model.frame(x), newdata = NULL,
  type.predict, type.residuals, ...)
}
\arguments{
\item{x}{An \code{rlm} object returned by \code{\link[MASS:rlm]{MASS::rlm()}}.}

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
For tidiers for models from the \pkg{robust} package see
\code{\link[=tidy.lmRob]{tidy.lmRob()}} and \code{\link[=tidy.glmRob]{tidy.glmRob()}}.
}
\seealso{
\code{\link[=augment]{augment()}}, \code{\link[=augment.lm]{augment.lm()}}

\code{\link[MASS:rlm]{MASS::rlm()}}

Other rlm tidiers: \code{\link{glance.rlm}},
  \code{\link{tidy.rlm}}
}
\concept{rlm tidiers}
