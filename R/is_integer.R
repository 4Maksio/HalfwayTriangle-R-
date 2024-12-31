#' Is value an integer
is_integer <- function(value) {
  if ((is.numeric(value) && as.integer(value) == value) ||
        (is.complex(value) && Im(value) == 0)) {
    return(TRUE)
  }
  return(FALSE)
}