% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{initials}
\alias{initials}
\title{Format short form person names}
\usage{
initials(x, format = "FLast")
}
\arguments{
\item{x}{a vector of people's names as strings}

\item{format}{a vector of strings of either "FLast" or "FL" to indicate the output format}
}
\value{
the inputted name strings with first names shortened based on the
selected format.
}
\description{
Converting names into first initial and surname, or just initials
}
