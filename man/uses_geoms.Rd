% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geoms.R
\name{uses_geoms}
\alias{uses_geoms}
\title{Does a plot use one or more geoms?}
\usage{
uses_geoms(p, geoms)
}
\arguments{
\item{p}{A ggplot object}

\item{geoms}{A vector of character strings. Each element should correspond to
the suffix of a ggplot2 \code{geom_} function, e.g. \code{c("point",
  "line", "smooth")}.}
}
\value{
\code{TRUE} or \code{FALSE}
}
\description{
\code{use_geoms} tests whether a plot uses one or more geoms in its layers.
The geoms can appear in any order in the plot and can be accompanied by other
geoms that are not checked for.
}
\examples{
require(ggplot2)
p <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()
uses_geoms(p, geoms = "point")
}
\seealso{
Other functions for checking geoms: 
\code{\link{geoms_match}()},
\code{\link{get_geoms}()},
\code{\link{ith_geom_is}()},
\code{\link{ith_geom}()}
}
\concept{functions for checking geoms}
