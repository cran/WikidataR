% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo.R
\name{get_geo_entity}
\alias{get_geo_entity}
\title{Retrieve geographic information from Wikidata}
\usage{
get_geo_entity(entity, language = "en", radius = NULL, limit = 100, ...)
}
\arguments{
\item{entity}{a Wikidata item (\code{Q...}) or series of items, to check
for associated geo-tagged items.}

\item{language}{the two-letter language code to use for the name
of the item. "en" by default, because we're imperialist
anglocentric westerners.}

\item{radius}{optionally, a radius (in kilometers) around \code{entity}
to restrict the search to.}

\item{limit}{the maximum number of results to return.}

\item{\\dots}{further arguments to pass to httr's GET.}
}
\value{
a data.frame of 5 columns:
\itemize{
 \item{item}{ the Wikidata identifier of each object associated with
 \code{entity}.}
 \item{name}{ the name of the item, if available, in the requested language. If it
 is not available, \code{NA} will be returned instead.}
 \item{latitude}{ the latitude of \code{item}}
 \item{longitude}{ the longitude of \code{item}}
 \item{entity}{ the entity the item is associated with (necessary for multi-entity
 queries).}
}
}
\description{
\code{get_geo_entity} retrieves the item ID, latitude
and longitude of any object with geographic data associated with \emph{another}
object with geographic data (example: all the locations around/near/associated with
a city).
}
\examples{
# All entities
\donttest{sf_locations <- get_geo_entity("Q62")}

# Entities with French, rather than English, names
\donttest{sf_locations <- get_geo_entity("Q62", language = "fr")}

# Entities within 1km
\donttest{sf_close_locations <- get_geo_entity("Q62", radius = 1)}

# Multiple entities
\donttest{multi_entity <- get_geo_entity(entity = c("Q62", "Q64"))}

}
\seealso{
\code{\link{get_geo_box}} for using a bounding box
rather than an unrestricted search or simple radius.
}
