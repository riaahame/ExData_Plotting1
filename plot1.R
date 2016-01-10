#Set the current working Directory
setwd("c:/Users/riaahame/Documents/CourseEra/DataScienceSpecialization/ExploratoryDataAnalysis/Week1/Project1")
EP_Data <- read.csv("./household_power_consumption.txt", header=T, na.strings="?", sep=";", stringsAsFactors = FALSE)

# Extract the subset data for the date range specified
DateRange <- c("1/2/2007", "2/2/2007")
Data_Subset <- EP_Data[EP_Data$Date %in% DateRange , ]

# Start plotting on screen device
hist(Data_Subset$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#Copy from screen to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
