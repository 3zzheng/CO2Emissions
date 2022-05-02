#Create a function of calculating Pearson's Coefficient of Skewness using mean and median (when mode is not available or
#when using mode is not making sense giving the variability of data).

PearsonSkewness <- function (x) {
  mean=mean(x, na.rm = TRUE)
  median=median(x, na.rm = TRUE)
  sd=sd(x, na.rm = TRUE)
  skewness= (3*(mean-median))/sd
  return(skewness)
}

skew_FDI <- PearsonSkewness(total$ForeignDirectInvest)
skew_FDI
hist(total$ForeignDirectInvest)