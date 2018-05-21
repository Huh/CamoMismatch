#' Create integer year to be used for index
#'
#' @param dt_col Vector of dates
#'
#' @return vector of integers
#' @export
#'
#' @examples
#' tst <- tibble::tibble(
#'   dates = Sys.time()
#' )
#'
#' get_yr(tst$dates)
get_yr <- function(dt_col){

  out <- as.integer(format(dt_col, "%Y"))

return(out)
}
