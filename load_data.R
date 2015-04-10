#########################################################################################
## load_data.R : This Program is for Exploratory Data Analysis Week 1 - Project 1 .    ##
##                                                                                     ##                         
## This Program reads data set "household_power_consumption.txt" for individual        ##
## household electric power consumption, that contains measurements of elesctric power ##
## consumption in one household with a one-minute sampling rate over a period of       ##
## 4 years. Different electrical quantities and some sub-metering values are available.## 
##                                                                                     ##
## The following descriptions of the 9 variables in the dataset are as follows:        ##
## 1.	Date: Date in format dd/mm/yyyy                                                  ##
## 2.	Time: time in format hh:mm:ss                                                    ##
## 3.	Global_active_power: household global minute-averaged active power (in kilowatt) ##
## 4.	Global_reactive_power: household global minute-averaged reactive power (in kw)   ##
## 5.	Voltage: minute-averaged voltage (in volt)                                       ##
## 6.	Global_intensity: household global minute-averaged current intensity (in ampere) ##
## 7.	Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy).       ##
##    It corresponds to the kitchen, containing mainly a dishwasher, an oven and a     ##
##    microwave (hot plates are not electric but gas powered).                         ##
## 8.	Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy).       ##
##    It corresponds to the laundry room, containing a washing-machine, a tumble-drier,##
##    a refrigerator and a light.                                                      ##
## 9.	Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy).       ## 
##    It corresponds to an electric water-heater and an air-conditioner.               ##
##                                                                                     ##
## Note: This dataset has 2,075,259 rows and 9 columns, we will only be using data     ## 
##       from the dates 2007-02-01 and 2007-02-02.                                     ##
#########################################################################################

##setwd("~/Desktop/Online Coursera/Coursera-Exploratory-Data-Analysis/ExData_Plotting1/")
setwd("C:/Users/212414010/My Documents/EDAProject1")

## This file is for loading the large dataset.

filename <- "./data/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) # 2075259 9
attach(data)

## We only need data of 2 days - strip data for 1/2/2007 & 2/2/2007.

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)