\name{couch_set_default_connection}
\alias{couch_set_default_connection}
\title{Set default connection}
\usage{
couch_set_default_connection(host, port = 5984, https = FALSE)
}
\arguments{
  \item{host}{The IP address of the couchDB instance}

  \item{port}{The port to connect to}

  \item{https}{Should a ssl protocol be used?}
}
\description{
Sets up a couchDB connection to use as default
}

