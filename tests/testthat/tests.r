library(testthat)
source("F:/G-kraken-repos/HalfwayTriangle-R-/triangles/triangles.r")

test_that("Function validate_numeric_input passes numeric", {
  value <- (420)
  expect_true(validate_numeric_input(value))
})

test_that("Function validate_numeric_input blocks string", {
  value <- "23"
  expect_error(validate_numeric_input(value), "Wrong input! Expected numeric.")
})

#   Trash to include or delete in the next commit

#   output <- capture.output({
#     # Zasymulowanie wartości wejściowej przez użytkownika
#     withr::with_input(list("42"), {
#       wynik <- foo("Podaj liczbę:")
#       # Sprawdzamy, czy wynik jest numeryczny i równy spodziewanej wartości
#       expect_equal(wynik, 42)
#     })
#   })
  
#   # Sprawdzamy, czy funkcja wypisuje właściwy komunikat
#   expect_true(any(grepl("Podaj liczbę:", output)))

#   output <- capture.output({
#     withr::with_input(list("42"), foo("Podaj liczbę:"))
#   })
#   expect_true(any(grepl("Podaj liczbę:", output)))

# test_that("Funkcja foo zwraca poprawną liczbę", {
#   wynik <- withr::with_input(list("42"), foo("Podaj liczbę:"))
#   expect_equal(wynik, 42)
# })

# test_that("Funkcja foo zgłasza błąd dla niepoprawnego wejścia", {
#   expect_error(withr::with_input(list("abc"), foo("Podaj liczbę:")), "Podano nieprawidłową wartość")
# })