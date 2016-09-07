data <- read.table('household_power_consumption.txt', header=TRUE, sep=";")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("Plot2.png", width=480, height=480)
dt <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(dt, as.numeric(subSetData$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
