#Create a function of panel regression analysis using the Least Squares Dummy Variable Estimation. 
#Remember some variables need to be log transformed if they are skewed.

Panel_Model <- function() {
  fixed_dummmy <-lm(logCO2 ~ ForeignDirectInvest + logGDP + UrbanPopPercent + factor(Country.Name) - 1, data=total)
  summary(fixed_dummmy)
}
Panel_Model()