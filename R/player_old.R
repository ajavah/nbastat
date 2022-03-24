#' An nbastat function
#'
#' This function will return the oldest player in a specific year, if multiple players are of the same age, it will return the top row.
#' @param year The year for which you wish to determine the oldest player
#' @keywords oldest player old
#' @export
#' @examples
#' player_old()

player_old <- function(year) {
  nbastat_year <- dplyr::filter(nbastat, Year == year)     #Subset to year
  nbastat_year_old <- dplyr::filter(nbastat_year, Age == max(nbastat_year$Age)) #Get oldest player(s)
  return(nbastat_year_old[1,])  #Return output
}
