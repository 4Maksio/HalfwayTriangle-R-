# is_valid_positive_integer only have one comparation
# it only refers to other tested functions

test_that("is_valid_positive_integer returns true", {
  expect_true(is_valid_positive_integer(1))
})

test_that("is_valid_positive_integer returns false", {
  expect_false(is_valid_positive_integer(-1))
})