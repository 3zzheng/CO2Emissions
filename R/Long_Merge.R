library(tidyr)

# In order to run panel (longitudinal) data analysis, we need to create a function of reshaping wide data into long data
# while merging different long datasets into one. Get the datasets below from the the Data folder.

Long_Merge <- function() {
  GDP_L <- gather(GDP, Year, GDPperCapita, X1990:X2018, factor_key=TRUE)
  CO2_L <- gather(CO2, Year, CO2emissions, X1990:X2018, factor_key=TRUE)
  total <- merge(GDP_L, CO2_L, by=c("Country.Name", "Year"))
  FDI_L <- gather(FDI, Year, ForeignDirectInvest, X1990:X2018, factor_key=TRUE)
  total <- merge(FDI_L, total, by=c("Country.Name", "Year"))
  Urban_L <- gather(UrbanPopulation, Year, UrbanPopPercent, X1990:X2018, factor_key=TRUE)
  total <- merge(total, Urban_L, by=c("Country.Name", "Year"))
  return(total)
}

total <- Long_Merge()
head(total)