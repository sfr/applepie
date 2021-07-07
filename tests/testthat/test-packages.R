testthat::test_that("get_packages() works", {
  vcr::use_cassette("packages", {
    pkgs <- get_packages("maelle")
  })
  testthat::expect_vector(pkgs, character())
})

testthat::test_that("get_packages() error", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("packages-error", {
    testthat::expect_error(get_packages("maelle"), "take off")
  })
})

testthat::test_that("get_packages() retries", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("packages-retry", {
    testthat::expect_message(pkgs <- get_packages("maelle"), "try")
  })
  testthat::expect_vector(pkgs, character())
})

testthat::test_that("get_packages() works", {
  skip_if_not_beyonce()
  vcr::use_cassette("blabla", {
    pkgs <- get_packages("maelle")
  })
  testthat::expect_vector(pkgs, character())
})
