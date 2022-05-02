\name{Long_Merge}
\title{
Long_Merge}
\description{
This function allows users to convert wide data into long data and merge different long datasets into one for longitudinal data analysis.
}
\usage{
Long_Merge()
}
\details{
This function requires users to install tidyr() package first.
}
\examples{
Long_Merge <- function() {
  GDP_L <- gather(GDP, Year, GDPperCapita, X1990:X2018, factor_key=TRUE)
  CO2_L <- gather(CO2, Year, CO2emissions, X1990:X2018, factor_key=TRUE)
  total <- merge(GDP_L, CO2_L, by=c("Country.Name", "Year"))
  return(total)
}
}

