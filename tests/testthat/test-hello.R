pth <- testthat::test_path("testdata", "test.xlsx")


test_that("reading and switching", {
  df <- readxl::read_excel(pth)
  cat("\ndeclared encodings with Encoding():`\n")
  print(Encoding(df[[1]]))
  cat("\ndetected encodings with stringi:`\n")
  print(stringi::stri_enc_detect(df[[1]]))
  cat("\ncheck is utf-8\n:")
  print(stringi::stri_enc_isutf8(df[[1]]))
  expect_equal(test(pth)$code , c(1,2,3))
  stringi::stri_enc_isutf8(df[[1]])
})

