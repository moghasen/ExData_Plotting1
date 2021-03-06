

data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE, stringsAsFactors=FALSE)

transform(data, Date = as.Date(Date))

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]



#plot3

subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", xlab="", ylab="Global Active Power (kilowatts)")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2.5)
dev.off()
