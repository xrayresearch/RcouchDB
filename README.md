# R-couchDB
R interface to the CouchDB database

## Description
This package contains various functions for interacting with couchDB - a
document database.  For more information about the couchDB database see [Apache
Couchdb](http://couchdb.apache.org) or the implementation by IBM as [IBM
Cloudant](http://cloudant.com).

## Usage
The pacakge on [CRAN](https://cran.r-project.org/web/packages/couchDB/index.html) 
is outdated at this moment. To follow the examples below (especially the
connection to Cloudant), please install the source code in this development branch with 
[devtools](https://cran.r-project.org/web/packages/devtools/index.html):

    devtools::install_github("FvD/RcouchDB")
    
### Get connected

To interact with a couchDB instance you will need to create a connection
object. Communication with couchDB happens over a http protocol. A minimal
connection (running on the default port and no password protection) would be:

    myConn <- couch_http_connection("localhost")

The variable `myConn` can now be used as parameters to other functions.

For convenience a default connection can also be created with
couch_set_default_connection using the same parameters.

Once a connection object exists, you may want to make sure it is connecting
correctly with the couch_ping function. If you are properly connected the
reponse should be something like:

```
Response [http://localhost:5984]
Status: 200
Content-type: text/plain; charset=utf-8
Size: 151 B
{"couchdb":"Welcome","uuid":"c1a367c91517195b57ddafe788a72b75","version":"1.4.0","vendor"
{"name":"...
```

To connect to cloudant specify the service (it defaults to couchdb) as follows:

    myConn <- couch_http_connection(host = "demo.cloudant.com",
                                    https = TRUE,
                                    service = "cloudant")

```
Response [https://demo.cloudant.com/]
  Date: 2016-05-13 16:50
  Status: 200
  Content-Type: application/json
  Size: 64 B
{"couchdb":"Welcome","version":"1.0.2","cloudant_build":"2580"}
```

### Databases

On a couchDB install there can be several databases (i.e. namespaces). The
function couch_list_databases will provide a list of available databases on the
connection provided.

The function `couch_create_database` will, similarly, allow you to create a new
database or namespace on the couchDB instance.

### Fetch, store and delete documents

Once you have a connection and a database to work with you can fetch, store and
delete documents by using the corresponding functions:

`couch_fetch()` and `couch_fetch_default()`

`couch_store()` and `couch_store_default()`

`couch_delete()`

