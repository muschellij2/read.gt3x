test_that("datetime2ticks works", {
  mystr = "599633592352500000"
  x = read.gt3x::ticks2datetime(mystr, tz = "UTC")
  out = structure(-2172237564.75, tzone = "UTC", class = c("POSIXct",
                                                           "POSIXt"))
  testthat::expect_equal(out, x)
  out = read.gt3x::datetime2ticks(as.POSIXct("1901-03-02 08:40:35.25", tz = "UTC"))
  testthat::expect_equal(out, mystr)
})
