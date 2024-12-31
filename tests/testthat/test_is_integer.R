test_that("is_integer returns true for obvious true", {
  expect_true(is_integer(-100))
  expect_true(is_integer(0L))
  expect_true(is_integer(1024))
})

test_that("is_integer returns true for not obvious true", {
  expect_true(is_integer(-100.0))
  expect_true(is_integer(0.00))
  expect_true(is_integer(1024.00 + 0i))
  expect_true(is_integer(c(1)))
})

test_that("is_integer returns false ", {
  expect_false(is_integer("string"))
  expect_false(is_integer(2.4))
  expect_false(is_integer(2.6 + 1i))
  expect_false(is_integer(TRUE))
})