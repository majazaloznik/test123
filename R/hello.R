#' Pipeline fun
#'
#' Reads excel table from file and uses the lookup function
#' to recode the values in `V1`
#'
#' @param path path to excel file
#'
#' @return dataframe with added `code` variable.
#' @export
#'
test <- function(path){

  df <- readxl::read_excel(path )
  info <- data.frame(code = 1:3,
                     desc = c( "Test",
                               "Te\u0161t",
                               "\u010d\u0161\u017e"))
  df %>%
    dplyr::rowwise() %>%
    dplyr::mutate(code = ifelse(is.na(match(V1, info$desc)), V1, match(V1, info$desc)))
}


