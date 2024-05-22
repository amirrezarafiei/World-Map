install.packages("rworldmap")
library(rworldmap)
library(sp)


data_map <- data.frame(country = c("USA", "Canada", "Iran", "South Korea", "Brazil", "Argentina", "China", "Japan", "Iraq", "Saudi Arabia", "UK", "Germany", "Austria", "Russia", "Sweden", "Finland", "France", "India", "Norway", "Ukraine", "Pakistan", "Turkey", "Australia", "Afghanistan", "Turkmenistan", "Uzbekistan"), prevalence = c(25, 35, 77, 41, 45, 52, 40, 32, 89, 68, 32, 35, 30, 45, 27, 22, 36, 55, 26, 37, 80, 48, 30, 91, 86, 79))

mapData <- joinCountryData2Map(data_map, joinCode = "NAME", nameJoinColumn = "country")

mapCountryData(mapData, nameColumnToPlot = "prevalence", catMethod = "pretty", colourPalette = "negpos8", mapTitle = "Prevalence of the Uncertain Disease in the World")

