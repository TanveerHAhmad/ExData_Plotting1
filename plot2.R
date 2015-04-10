#########################################################################################
## plot2.R : This Program is for Exploratory Data Analysis Week 1 - Project 1 .        ##
##                                                                                     ##                         
## This Program creates Plot2 - Line Graph for Global Power Active Users.              ##
##                                                                                     ##
#########################################################################################

## First check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
    setwd("~/Desktop/Online Coursera/Coursera-Exploratory-Data-Analysis/ExData_Plotting1/")
}

# load data
source("load_data.R")

# open device
png(filename = "plot2.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")

# plot data
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# Turn off device
dev.off()