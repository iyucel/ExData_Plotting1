#plot 4
rawimport <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings= "?")
head(rawimport)
power<- rawimport[rawimport$Date %in% c("1/2/2007", "2/2/2007"),]
dayofweek<-strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow= c(2,2))
plot(dayofweek, globalActivePower, xlab="", ylab="Global Active Power (kilowatts)", type="l")
plot(dayofweek, power$Voltage, xlab="datetime", ylab="Voltage", type="l")
plot(dayofweek, power$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering", col="black")
points(dayofweek, power$Sub_metering_2, type="l", xlab="", ylab="", col="red")
points(dayofweek, power$Sub_metering_3, type="l", xlab="", ylab="", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend =c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
plot(dayofweek, power$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.copy(png, file="plot4.png")
dev.off()