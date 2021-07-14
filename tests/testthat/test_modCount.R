library(Dmc5)
library(testthat)

test_that("Return value object class test for modCount", {
  dmc5 <- modCount("https://www.nexusmods.com/devilmaycry5/mods/")
  expect_equal(class(dmc5), "numeric")
})
