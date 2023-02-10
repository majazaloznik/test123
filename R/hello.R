#' Lookup fun
#'
#' @param x character string
#'
#' @return numeric code or error
#' @export
#'
codes <- function(x){
  switch(x,
         "Test" = 1,
         "Te\u0161t" = 2,
         "\u010d\u0161\u017e" = 3,
         stop(paste0("nope, isn't working for", x)))
}

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

  df %>%
    dplyr::rowwise() %>%
    dplyr::mutate(code = ifelse(!is.na(V1), codes(V1), NA))
}



