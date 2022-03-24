#' An nbastat function
#'
#' This function will return the top-scoring player in a specific year.
#' @param year The year for which you wish to determine the top-scoring player
#' @keywords top scoring player score
#' @export
#' @examples
#' player_topscore()
player_topscore <- function(year) {
  nbastat_year <- dplyr::filter(nbastat, Year == year)
  return(dplyr::filter(nbastat_year, PTS == max(nbastat_year$PTS)))
}
