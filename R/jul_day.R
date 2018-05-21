#' Create julian day from date time column
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
#' jul_day(tst$dates)
jul_day <- function(dt_col){

  out <- as.integer(format(dt_col, "%j"))

return(out)
}
