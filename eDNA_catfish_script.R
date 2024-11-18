### Statistical analysis script in R v2024.04.2+764

## Correlation matrix
#########################################
# Read in the data for Rotoiti
data.rotoiti <- read.csv("rotoiti_allmethods_perL.csv")
#Load in the R package
library("Hmisc")
rotoiti.cormatrix.significance <- rcorr(as.matrix(data.rotoiti, type = "spearman"))
print(rotoiti.cormatrix.significance)
# Read in the data for Oranga
data.oranga <- read.csv("oranga_allmethods_perL.csv")
oranga.cormatrix.significance <- rcorr(as.matrix(data.rotoiti, type = "spearman"))
print(rotoiti.cormatrix.significance)

##Stacked percentage bar graph  
#######################################
#Input the data
detections <- read.csv("Detections.csv")
#Load in the R package
library(ggplot2)
#Create stacked bar graph
detection.plot <- ggplot(detections, aes(x = Assay, y = Number, fill = Result)) + geom_col(position = "fill") + scale_y_continuous(labels = scales::percent) + xlab("") + ylab("")
detection.plot
ggsave("Detections.png")

##Bar graphs
#######################################
#Rotoiti
#Input the data
rotoiti.barchart <- read.csv("Rotoiti.Bar.csv")
#Load in the R package
library(ggplot2)
#Create bar graph BPUE
rotoiti.BPUE <- ggplot(rotoiti.barchart, aes(x=Site, y = BPUE)) + geom_bar(stat = "identity")
ggsave("rotoiti.BPUE.png")

#Create bar graph CPUE
rotoiti.CPUE <- ggplot(rotoiti.barchart, aes(x=Site, y = CPUE)) + geom_bar(stat = "identity")
ggsave("rotoiti.CPUE.png")

#Create bar graph WAFine
rotoiti.WAFine <- ggplot(rotoiti.barchart, aes(x=Site, y = WAFine), color = "blue") + geom_bar(stat = "identity")
ggsave("rotoiti.WAFine.png")

#Create bar graph WADacron
rotoiti.WADacron <- ggplot(rotoiti.barchart, aes(x=Site, y = WADacron), color = "blue") + geom_bar(stat = "identity")
ggsave("rotoiti.WADacron.png")

#Create bar graph WVDacron
rotoiti.WVDacron <- ggplot(rotoiti.barchart, aes(x=Site, y = WVDacron), color = "red") + geom_bar(stat = "identity")
ggsave("rotoiti.WVDacron.png")

#Create bar graph ddPCRCoarse
rotoiti.WVDacron <- ggplot(rotoiti.barchart, aes(x=Site, y = ddPCRCoarse), color = "green") + geom_bar(stat = "identity")
ggsave("rotoiti.ddPCRCoarse.png")

