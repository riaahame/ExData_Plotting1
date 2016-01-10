#Set the current working Directory
setwd("c:/Users/riaahame/Documents/CourseEra/DataScienceSpecialization/ExploratoryDataAnalysis/Week1/Project1")
EP_Data <- read.csv("./household_power_consumption.txt", header=T, na.strings="?", sep=";", stringsAsFactors = FALSE)

# Extract the subset data for the date range specified
DateRange <- c("1/2/2007", "2/2/2007")
Data_Subset <- EP_Data[EP_Data$Date %in% DateRange , ]

datetime <- strptime(paste(Data_Subset$Date, Data_Subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

SM1 <- as.numeric(Data_Subset$Sub_metering_1)
SM2 <- as.numeric(Data_Subset$Sub_metering_2)
SM3 <- as.numeric(Data_Subset$Sub_metering_3)

#Plot to file
png("plot3.png", width=480, height=480)
plot(datetime, SM1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, SM2, type="l", col="red")
lines(datetime, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))
dev.off()
