codes <- function(x){
  switch(x,
         "Test" = 1,
         "Tešt" = 2,
         "čšž" = 3,
         stop(paste0("nope, isn't working for", x)))
}

test <- function(path){

  df <- readxl::read_excel(path )

  df %>%
    dplyr::rowwise() %>%
    dplyr::mutate(code = ifelse(!is.na(V1), codes(V1), NA))
}



