test_that("get_input writes a message", {
  msg <- "Test! tEST. test@ TEST1"
  # Forcing get_input not to print in readline
  mock <- function(...) ""

  unlockBinding("readline", baseenv())
  assign("readline", mock, envir = baseenv())
  lockBinding("readline", baseenv())

  output <- capture.output(get_input(msg = msg))
  expect_true(any(grepl(msg, output)))
})

test_that("get_input gets input", {
  msg <- "Test! tEST. test@ TEST1"
  mock <- function(...) msg

  unlockBinding("readline", baseenv())
  assign("readline", mock, envir = baseenv())
  lockBinding("readline", baseenv())

  input <- get_input()
  expect_equal(input, msg)
})

test_that("get_input validates input", {
  value <- "valid_value"
  mock <- function(...) value
  validation <- function(value) {
    any(grepl("^valid_", value))
  }

  unlockBinding("readline", baseenv())
  assign("readline", mock, envir = baseenv())
  lockBinding("readline", baseenv())

  input <- get_input(validation_method = validation)
  expect_equal(input, value)

  value <- "err_value"
  expect_error(get_input(validation_method = validation))
})