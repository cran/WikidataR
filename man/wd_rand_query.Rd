% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/queries.R
\name{wd_rand_query}
\alias{wd_rand_query}
\title{Download random Wikidata items}
\usage{
wd_rand_query(ns, limit, ...)
}
\arguments{
\item{ns}{string indicating namespace, most commonly "Main" for QID items, "Property" for PID properties}

\item{limit}{how many random objesct to return}

\item{\\dots}{Additional parameters to supply to [httr::POST]}
}
\value{
a download of the full wikidata objects (items or properties) formatted as nested json lists
}
\description{
Utility wrapper for wikidata API to download random items. Used by \code{random_item}
}
