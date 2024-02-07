parity <- function(number) {
  list(parity = if (as.integer(number) %% 2 == 0) "even" else "odd")
}

lambdr::start_lambda()
This is the handler for lambda and entry point as well
