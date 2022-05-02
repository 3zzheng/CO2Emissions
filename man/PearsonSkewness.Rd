\name{PearsonSkewness}
\title{PearsonSkewness
}
\description{
To calculate Pearson's Coefficient of Skewness using mean and median (when mode is not available).
}
\usage{
This function can be used in Base R.
}
\examples{
PearsonSkewness <- function (x) {
  mean=mean(x, na.rm = TRUE)
  median=median(x, na.rm = TRUE)
  sd=sd(x, na.rm = TRUE)
  skewness= (3*(mean-median))/sd
  return(skewness)
}
}