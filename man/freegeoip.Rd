% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo_functions.R
\name{freegeoip}
\alias{freegeoip}
\title{Geolocate IP addresses in R}
\source{
\url{http://heuristically.wordpress.com/2013/05/20/geolocate-ip-addresses-in-r/}.  \url{http://freegeoip.net/json/}
}
\usage{
freegeoip(ip = myip(), format = ifelse(length(ip) == 1, "list",
  "dataframe"), ...)
}
\arguments{
\item{ip}{a character vector of ips (default is the output from \link{myip})}

\item{format}{format of the output. Either "list" (default) or "data.frame"}

\item{...}{not in use}
}
\value{
a list or data.frame with details on your geo location based on the freegeoip.net service.
}
\description{
This R function uses the free freegeoip.net geocoding service to resolve an IP address (or a vector of them) into country, region, city, zip, latitude, longitude, area and metro codes.

The function require rjson.
}
\examples{
\dontrun{
freegeoip()

## http://www.students.ncl.ac.uk/keith.newman/r/maps-in-r
# install.packages("maps")
# install.packages("mapdata")
library(maps)
library(mapdata)    # Contains the hi-resolution points that mark out the countries.
map('worldHires')
require(installr)
myip_details <- freegeoip(myip())
my_lati <- myip_details$latitude
my_long <- myip_details$longitude
points(my_lati,my_long,col=2,pch=18, cex = 1)
# lines(c(my_lati,0) ,c(my_long, 50), col = 2)#' 
}
}
\author{
Heuristic Andrew (see source for details)
}
\seealso{
\link{freegeoip}, \link{myip}, \link{cranometer}
}

