source("tests/testthat/test_auth.R")

test_that("There is a correct reponse from a couchdb server", {
 result <- couch_ping(unauthorized_conn)
 expect_equal(result$status_code, 200)
})