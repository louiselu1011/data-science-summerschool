library(dplyr)
library(readxl)

Motivation
Resource
Analysis
Result
ExtendedResearch

#���إ���έp��T��
url <- "https://www.stat.gov.tw/mp.asp?mp=4"
#�åͺ֧Q��
url <- "https://dep.mohw.gov.tw/DeptList.html#"
#�U���������C�H�i��t�ұo
url <- "https://statdb.dgbas.gov.tw/pxweb/Dialog/includes/Excelss.gif"
hhsfile <- read_excel("C:/Users/louin/Documents/GitHub/homework2/household_statistics.xlsx")
head(hhsfile)
#2017�U�����ܼ~�{�Ī��ϥΤH��
url <- "https://www.mohw.gov.tw/dl-16605-eee5f1f6-b653-46ce-9931-9d8fa54959d7.html"
uotadfile <- read_excel("C:/Users/louin/Documents/GitHub/homework2/users_of_the_antidepressant_in_each_city_2017.xlsx")
head(uotadfile)

"per capita disposable income" <- select(hhsfile, city, `per capita disposable income`)
head(`per capita disposable income`)
"users of antidepressant" <- arrange(uotadfile, desc(`users of the antidepressant`))
head(`users of antidepressant`)
depression_v.s._income <- left_join(`users of antidepressant`, `per capita disposable income`, by = "city")
head(depression_v.s._income)