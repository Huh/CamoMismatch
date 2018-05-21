#' Bin continuous observations into categories
#'
#' @param x Vector of observations to bin
#' @param ncats Number of desired categories to output
#'
#' @return Vector of integers
#' @export
#'
#' @examples
#' bin_obs(seq(0, 1, by = 0.1), 5)
bin_obs <- function(x, ncats = 5){

  out <- as.integer(as.character(cut(x, ncats, labels = 1:ncats)))

return(out)
}
