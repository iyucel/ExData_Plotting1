#plot1
rawimport <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings= "?")
head(rawimport)
power<- rawimport[rawimport$Date %in% c("1/2/2007", "2/2/2007"),]
globalActivePower <-as.numeric(power$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()




