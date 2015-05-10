powerData <- "./project1/household_power_consumption.txt"
powerData2 <- read.table(powerData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
twoDaysData <- powerData2[powerData2$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime <- strptime(paste(twoDaysData$Date, twoDaysData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(twoDaysData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()