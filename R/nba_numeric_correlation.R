#' An nbastat function
#'
#' This function will generate a correlation matrix of numeric (continous) variables for a specific year.
#' @param year The year which will you wish to generate a correlation matrix for
#' @keywords nba numeric correlation
#' @export
#' @examples
#' nba_numeric_correlation()
#'
nba_numeric_correlation <- function(year) {
  nbastat_year <- dplyr::filter(nbastat, Year == year)    #Subset to year
  nbastat_year_numeric <- nbastat_year[,sapply(nbastat_year,is.numeric)]   #Use only numeric values
  return(cor(nbastat_year_numeric)) #Return output
}
