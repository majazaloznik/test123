pth <- testthat::test_path("testdata", "test.xlsx")


test_that("reading and switching", {
  df <- readxl::read_excel(pth)
  cat("\ncheck local encoding:")
  print(l10n_info())
  expect_equal(test(pth)$code , c(1,2,3))
})
