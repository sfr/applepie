skip_if_not_beyonce <- function() {
  user <- whoami::username()
  if (user == "beyonce") {
    return(invisible(TRUE))
  }
  skip("Not Beyonce!")
}
