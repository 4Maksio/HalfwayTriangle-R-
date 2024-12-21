test_that("is_valid recognises valid values", {
  expect_true(is_valid(-5))
  expect_true(is_valid(0))
  expect_true(is_valid(10))
  expect_true(is_valid("tekst"))
  expect_true(is_valid(""))
  expect_true(is_valid(FALSE))
})

test_that("is_valid recognises invalid values", {
  expect_false(is_valid(NULL))
  expect_false(is_valid(NA))
  expect_false(is_valid(NaN))
  expect_false(is_valid(Inf))
  expect_false(is_valid(list(1, 2)))
  expect_false(is_valid(matrix()))
  expect_false(is_valid(factor(c("K", "M"))))
})