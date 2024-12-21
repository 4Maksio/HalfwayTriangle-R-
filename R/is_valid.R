#' Does value contain valid information
is_valid <- function(value) {
  if (
      length(value) != 1 ||
        is.na(value) ||
        is.null(value) ||
        is.infinite(value)) {
    return(FALSE)
  }
  return(TRUE)
}