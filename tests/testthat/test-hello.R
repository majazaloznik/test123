pth <- testthat::test_path("testdata", "test.xlsx")


test_that("reading and switching", {
  expect_equal(test(pth)$code , c(1,2,3))
})
