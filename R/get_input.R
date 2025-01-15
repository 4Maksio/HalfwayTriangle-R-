#' Get input from user

get_input <- function(msg = "", validation_method = NULL) {
  cat(msg, "\n")
  input <- readline()
  if (!is.null(validation_method) && !validation_method(input)) {
    stop("Invalid Input")
  }
  return(input)
}