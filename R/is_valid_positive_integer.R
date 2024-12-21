#' Is value a positive integer
is_valid_positive_integer <- function(value) {
  if (
      is_valid(value) &&
        is_integer(value) &&
        is_positive(value)) {
    return(TRUE)
  }
  return(FALSE)
}