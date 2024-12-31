test_that("is_positive returns true", {
  expect_true(is_positive(1))
  expect_true(is_positive(10000000))
})

test_that("is_positive returns false", {
  expect_false(is_positive(0))
  expect_false(is_positive(-1))
})