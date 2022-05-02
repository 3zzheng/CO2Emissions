\name{Panel_Model}
\title{
Panel_Model
}
\description{
This function runs the fixed-effects panel regression model using the Least Squares Dummy Variable Estimation.
}
\usage{
Panel_Model()
}
\details{
Users need to have plm() package installed. Skewed data should be transformed into log form before running the function.
}
\examples{
Panel_Model <- function() {
  fixed_dummmy <-lm(logCO2 ~ ForeignDirectInvest + logGDP + UrbanPopPercent + factor(Country.Name) - 1, data=total)
  summary(fixed_dummmy)
}
}

