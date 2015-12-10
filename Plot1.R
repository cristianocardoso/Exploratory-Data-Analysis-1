
datafile<-"C:/Users/LP/Desktop/COURSERA/EXPLORATORY-DATA-ANALYSIS/household_power_consumption.txt"
mydata<-read.table(datafile, sep=";", stringsAsFactors = F, dec=".",na.strings="?", header=TRUE)
mySubset <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(mySubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
