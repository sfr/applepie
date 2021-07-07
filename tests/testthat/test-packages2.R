testthat::test_that("get_packages2() works", {
  vcr::use_cassette("packages2", {
    pkgs <- get_packages2("maelle")
  })
  testthat::expect_vector(pkgs, character())
})
