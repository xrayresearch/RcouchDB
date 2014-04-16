\name{couch_new_object}
\alias{couch_new_object}
\title{New couchDB document}
\usage{
couch_new_object(value, database = NULL, key = NULL)
}
\arguments{
  \item{value}{List to be converted to json for
  transmission or preformatted JSON string}

  \item{database}{The database to use}

  \item{key}{The key (recordname) to use for the object.}
}
\description{
Creates a new object to to insert to the couchDB. Takes
either a list or a formatted json object as value Any
attachment to the record needs to be base64-enconded added
to the list as "_attachments" If key is provided this is
used, null sends a key-less record to couch and the key
will have to be retrieved from the reponse object.
}
\examples{
\dontrun{
   # This code creates a document containing a small list for storage in the "localhost"
   # database with the key "testDoc".
   myDoc <- couch_new_object(list(a=1,b=2),"localhost","testDoc");

   #Same as above but with json entered directly (not recommended).
   myDoc <- couch_new_object('{"a":1,"b":2}',"localhost","testDoc")
}
}

