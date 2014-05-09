source("base.R")

#plot4
png(filename = "./plots/plot4.png",
    width = 480, height = 480)
par(mfrow = c(2,2))
with(data, {
  plot(Date, Global_active_power, 
       type="l", main = "", xlab="",
       ylab="Global Active Power")
  plot(Date, Voltage, 
       type="l", main = "", xlab="datetime",
       ylab="Voltage")
  with(data,
       plot(Date, Sub_metering_1, 
            type="l", main = "", xlab="",
            ylab="Energy sub metering"))
  
  with(data, lines(Date, Sub_metering_2, col="red"))
  with(data, lines(Date, Sub_metering_3, col="blue"))
  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
         lty=c(1,1,1), col=c("black", "red", "blue"), box.lwd=0)
  plot(Date, Global_reactive_power, 
       type="l", main = "", xlab="datetime")
})
dev.off()