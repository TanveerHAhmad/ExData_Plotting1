#########################################################################################
## plot1.R : This Program is for Exploratory Data Analysis Week 1 - Project 1 .        ##
##                                                                                     ##                         
## This Program creates Plot1 - Histogram for Global Power Active Users.               ##
##                                                                                     ##
#########################################################################################

## First check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
   #setwd("~/Desktop/Online Coursera/Coursera-Exploratory-Data-Analysis/ExData_Plotting1/")
    setwd("C:/Users/212414010/My Documents/EDAProject1")
} 

# load data
source("load_data.R")

# open device
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# plot data
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

# Turn off device
dev.off()
