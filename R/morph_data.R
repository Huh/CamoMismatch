#' Wrapper for initial data handling steps
#'
#' @param path Path to detection data
#' @param ncats Number of categories to bin observations into
#'
#' @return A tibble with formatted columns
#' @export
#'
#' @examples morph_data("C:/TEMP/brandon/detections.csv")
morph_data <- function(path, ncats = 5){
  out <- read_detections(
      path = path,
      col_names = c("picture", "camera", "date", "time", "image", "species",
        "white", "N_animals"),
      skip = 1
    ) %>%
    dplyr::mutate(
      dt = date_helper(date, time, tz = "MST"),
      day = jul_day(dt),
      yr = get_yr(dt),
      bin_obs = bin_obs(white, ncats)
    ) %>%
    dplyr::select(-date, -time)

return(out)
}
