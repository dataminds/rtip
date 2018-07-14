# http://gastonsanchez.com/blog/how-to/2014/01/15/Center-data-in-R.html
# look into function
rep(1, nrow(p1.df))
t(colMeans(p1.df))
head(rep(1, nrow(p1.df)) %*% t(colMeans(p1.df)))

# function for mean centering
center_mean <- function(x) {
  ones = rep(1, nrow(x))
  x_mean = ones %*% t(colMeans(x))
  x - x_mean
}
