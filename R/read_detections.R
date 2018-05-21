#' A function to read in detection data
#'
#' @param path Is the path to the file to read
#' @param ctype Column types of the data being read
#' @param ... other arguments of rear::read_csv
#'
#' @return A tibble
#' @export
#'
#' @examples tst <- read_detections(
#' "C:/TEMP/brandon/detections.csv",
#' col_names = c("picture", "camera", "date", "time", "image", "species",
#'   "white", "N_animals")
#' )
read_detections <- function(path, ctype = "icccicdi", ...){
  stopifnot(grepl("csv$", basename(path)))

  out <- readr::read_csv(
    path,
    col_types = ctype,
    trim_ws = T,
    ...
  )

return(out)
}
