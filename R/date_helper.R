#' A function to format dates and times stored in separate columns
#'
#' @param date A character representation of the date
#' @param time A character representation of the time
#' @param tz The time zone with which the data was collected
#' @param date_format An character string reflecting the storage format of the dates, to view options see ?base::strptime
#' @param time_format An character string reflecting the storage format of the time, to view options see ?base::strptime
#'
#' @return A vector of class POSIXct
#' @export
#'
#' @examples
#' tst <- tibble::tibble(
#'   Date = "10/01/2017",
#'   Time = "11:33"
#' )
#'
#' tst <- date_helper(tst$Date, tst$Time, tz = "UTC")
#'
date_helper <- function(date, time, tz = NULL, date_format = "%m/%d/%Y",
  time_format = "%H:%M"){

    if(is.null(tz)){
      stop("Time zone must be specified by the user.  To see options
        ?base::timezones")
    }

    dt <- as.POSIXct(
      paste(date, time),
      tz = tz,
      format = paste(date_format, time_format)
    )

return(dt)
}
