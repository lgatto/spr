diff1 <- function(e) {
  ## Explicit loop
  n <- length(e)
  interval <- rep(0, n-1) ## pre-allocate result
  for (i in 1:(n-1)) {
    interval[i] <- e[i+1] - e[i]
  }
  interval
}

diff2 <- function(e) {
  ## Vectorized solution
  n <- length(e)
  e[-1] - e[-n]
}

x <- c(5.9, 10.2, 12.4, 18.8)
all.equal(diff1(x), diff2(x))
