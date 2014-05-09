source("base.R")

#plot1
png(filename = "./plots/plot1.png",
    width = 480, height = 480)
with(data, 
     hist(Global_active_power, col="red", 
          main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()

