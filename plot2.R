source("base.R")

#plot2
png(filename = "./plots/plot2.png",
    width = 480, height = 480)
with(data, 
     plot(Date, Global_active_power, 
          type="l", main = "", xlab="",
          ylab="Global Active Power (kilowatts)"))
dev.off()
