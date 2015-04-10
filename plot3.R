#########################################################################################
## plot3.R : This Program is for Exploratory Data Analysis Week 1 - Project 1 .        ##
##                                                                                     ##                         
## This Program creates Plot3 - Line Graph with Legend for Global Power Active Users.  ##
##                                                                                     ##
#########################################################################################

## First check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
    setwd("~/Desktop/Online Coursera/Coursera-Exploratory-Data-Analysis/ExData_Plotting1/")
}

# load data
source("load_data.R")

# open device
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

# plot data
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")

# add legend
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

# close device
dev.off()