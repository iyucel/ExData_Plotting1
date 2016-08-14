#plot3
rawimport <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings= "?")
head(rawimport)
power<- rawimport[rawimport$Date %in% c("1/2/2007", "2/2/2007"),]
dayofweek<-strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(dayofweek, power$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering", col="black")
points(dayofweek, power$Sub_metering_2, type="l", xlab="", ylab="", col="red")
points(dayofweek, power$Sub_metering_3, type="l", xlab="", ylab="", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend =c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
dev.copy(png, file="plot3.png")
dev.off()     



