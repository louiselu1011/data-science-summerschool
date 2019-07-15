library(dplyr)
library(readxl)
url <- "http://api.worldbank.org/v2/en/indicator/IC.TAX.LABR.CP.ZS?downloadformat=csv"
filename <- "laborforce.xlsx"
laborforce <- read_excel("C:/Users/louin/Documents/GitHub/laborforce.xlsx")
womenforce <- select(laborforce, `Country Name`, `force2018`)
head(womenforce)

url <- "http://api.worldbank.org/v2/en/indicator/SL.TLF.TOTL.FE.ZS?downloadformat=csv"
filename <- "labortax.xls"
labortax <- read_excel("C:/Users/louin/Documents/GitHub/labortax.xlsx")
head(labortax)
taxcontribution <- select(labortax, `Country Name`, `tax2018`)
head(taxcontribution)





x <- taxcontribution
y <- womenforce
merge(taxcontribution, womenforce, all.x = TRUE)

#visualize data
library(ggplot2)
datacombined <- merge(taxcontribution, womenforce, all.x = TRUE)

ggplot(data = datacombined, mapping = aes(x = tax2018, y = force2018, color = "sex")) + 
  geom_point(alpha = .7, size = 3)       
