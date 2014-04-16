\name{couch_http_connection}
\alias{couch_http_connection}
\title{Connection to couchDB}
\usage{
couch_http_connection(host, port = 5984, https = FALSE, user = NULL,
  password = NULL)
}
\arguments{
  \item{host}{The IP address of the couchDB instance}

  \item{port}{The port to connect to}

  \item{https}{Should a ssl protocol be used}
}
\description{
Creates a connection object on the host and ports provided
}
\examples{
\dontrun{
   myConn <- couch_http_connection(host="localhost");
}
}

