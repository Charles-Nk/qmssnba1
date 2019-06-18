#' Name of First Oldest Player Function
#'
#' This function allows you to obtain name of the first player listed among the oldest players in an NBA Season Stats Dataset, given a selected year
#'
#' @keywords Oldest
#'
#' @param x The year you select in the dataset
#'
#' @return The output from \code{\link{print}}, which is the name of that first listed player
#'
#' @export
#'
#' @import tidyverse
#'
#'
#' @examples
#' \dontrun{
#' first_player_age(2000)
#' }
#'
first_player_age <- function(x){
  y <- tibble::as_tibble(Seasons_Stats_NBA)
  z <- dplyr::select(y$Year, y$Player, y$Age)
  t <- dplyr::filter(z$Year == x)
  df <- dplyr::arrange(dplyr::desc(t$Age))
  print(paste("In the year ", df$Year[1], ", the oldest players were ", df$Age[1], " years-old and - among them - the first player listed in the NBA Seasons Stats dataset is: ", df$Player[1]))
}
