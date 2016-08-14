#plot2
rawimport <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings= "?")
head(rawimport)
power<- rawimport[rawimport$Date %in% c("1/2/2007", "2/2/2007"),]
globalActivePower <-as.numeric(power$Global_active_power)
dayofweek<-strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(dayofweek, globalActivePower, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.copy(png, file="plot2.png")
dev.off()

