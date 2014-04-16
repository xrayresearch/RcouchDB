\name{couch_fetch_default}
\alias{couch_fetch_default}
\title{Fetch document/record from default store.}
\usage{
couch_fetch_default(key, myOpts = NULL)
}
\arguments{
  \item{key}{The key of the document to fetch}

  \item{myOpts}{Additional options (not implemented in this
  version)}
}
\value{
A list object with the values from the record.
}
\description{
Fetches a document specified by Key from the default
database on the default connection
}

