testthat::test_that("get_packages2() works", {
  vcr::use_cassette("packages2", {
    pkgs <- get_packages2("maelle")
  })
  testthat::expect_vector(pkgs, character())
})

testthat::test_that("get_packages2 errors well", {
  withr::local_envvar("SECRET_PLANET_TOKEN" = "")
  testthat::expect_snapshot_error(get_packages2("maelle"))
})
