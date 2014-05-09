#install if not installed:
#install.packages("RCurl")
Sys.setlocale(category = "LC_ALL", locale = "C")

dir.create("./data", showWarnings = FALSE)

fileUrl <- "./data/exdata-data-household_power_consumption.zip"

if(!file.exists(fileUrl)) {
  library(RCurl)
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  zippedFile <- getBinaryURL(url, ssl.verifypeer=FALSE)
  file <- file(fileUrl, open = "wb")
  writeBin(zippedFile, file)
  close(file)
  rm(zippedFile)
}

data <- read.table(unz(fileUrl, "household_power_consumption.txt"), sep=";", stringsAsFactors=FALSE, header=TRUE, na.strings="?")

data <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
data$Date <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data$Time <- NULL