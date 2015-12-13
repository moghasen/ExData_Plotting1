

data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE, stringsAsFactors=FALSE)

transform(data, Date = as.Date(Date))

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#double check row count to make sure filter is ok
nrow(data)


#plot1

png("plot1.png", width=480, height=480)
globalActivePower <- as.numeric(data$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
