library("vcr") # *Required* as vcr is set up on loading
invisible(vcr::vcr_configure(
  dir = vcr::vcr_test_path("fixtures"),
  filter_request_headers = list(Authorization = "not-my-secret-hehe")
))
vcr::check_cassette_names()
if (!nzchar(Sys.getenv("SECRET_PLANET_TOKEN"))) {
  Sys.setenv("SECRET_PLANET_TOKEN" = "abcd123")
}
