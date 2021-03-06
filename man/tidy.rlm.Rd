% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mass-rlm-tidiers.R
\name{tidy.rlm}
\alias{tidy.rlm}
\title{Tidy a(n) rlm object}
\usage{
\method{tidy}{rlm}(x, ...)
}
\arguments{
\item{x}{An \code{rlm} object returned by \code{\link[MASS:rlm]{MASS::rlm()}}.}

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
This method wraps \code{\link[=tidy.lm]{tidy.lm()}}.
}
\details{
For tidiers for models from the \pkg{robust} package see
\code{\link[=tidy.lmRob]{tidy.lmRob()}} and \code{\link[=tidy.glmRob]{tidy.glmRob()}}.
}
\seealso{
\code{\link[=tidy]{tidy()}}, \code{\link[=tidy.lm]{tidy.lm()}}

\code{\link[MASS:rlm]{MASS::rlm()}}

Other rlm tidiers: \code{\link{augment.rlm}},
  \code{\link{glance.rlm}}
}
\concept{rlm tidiers}
