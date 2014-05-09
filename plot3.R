source("base.R")

#plot3
png(filename = "./plots/plot3.png",
    width = 480, height = 480)
with(data,
     plot(Date, Sub_metering_1, 
          type="l", main = "", xlab="",
          ylab="Energy sub metering"))

with(data, lines(Date, Sub_metering_2, col="red"))
with(data, lines(Date, Sub_metering_3, col="blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), col=c("black", "red", "blue"))
dev.off()
