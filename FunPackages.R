install.packages("fun")
library(fun)

mine_sweeper()



install.packages("fortunes")
library(fortunes)
fortune("memory")

difftime("2024-12-24",Sys.Date(),units="days")

#week3 05.11.2024
#suntime calculation
install.packages("suncalc")
install.packages("V8")

library(suncalc)
library(V8)

getSunlightTimes(date = as.Date("2024-11-06") , lat =49.782332, lon =9.970187, tz ="CET")

#packages not official on CRAN but 
if(!require(devtools)) {install.packages(devtools)}
devtools::install_github("brooke-watson/BRRR")
library(BRRR)

skrrrahh("snoop")


