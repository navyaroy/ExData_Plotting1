data <- read.table('household_power_consumption.txt', header=TRUE, sep=";")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dt <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("Plot3.png")

plot(dt, as.numeric(subSetData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")

lines(dt, as.numeric(subSetData$Sub_metering_2), type="l", col="red")
lines(dt, as.numeric(subSetData$Sub_metering_3), type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
