pth <- testthat::test_path("testdata", "test.xlsx")


test_that("reading and switching", {
  df <- readxl::read_excel(pth)
  expect_equal(test(pth)$code , c(1,2,3))
})
