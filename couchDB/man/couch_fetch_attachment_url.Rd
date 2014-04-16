\name{couch_fetch_attachment_url}
\alias{couch_fetch_attachment_url}
\title{Get attachment url}
\usage{
couch_fetch_attachment_url(conn, database, key = NULL, attachment = NULL,
  opts = NULL)
}
\arguments{
  \item{database}{the database}

  \item{key}{document key}

  \item{attachment}{name of the attachment}
}
\description{
Get the url for a specific attachment, This is sometimes
useful for direct reads to functions, in lieu of storing
tempfiles.
}

