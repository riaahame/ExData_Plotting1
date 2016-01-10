#Set the current working Directory
setwd("c:/Users/riaahame/Documents/CourseEra/DataScienceSpecialization/ExploratoryDataAnalysis/Week1/Project1")
EP_Data <- read.csv("./household_power_consumption.txt", header=T, na.strings="?", sep=";", stringsAsFactors = FALSE)

# Extract the subset data for the date range specified
DateRange <- c("1/2/2007", "2/2/2007")
Data_Subset <- EP_Data[EP_Data$Date %in% DateRange , ]

datetime <- strptime(paste(Data_Subset$Date, Data_Subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(Data_Subset$Global_active_power)

#Start the plot to file
png("plot2.png", width=480, height=480)
plot(datetime, GAP, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()
