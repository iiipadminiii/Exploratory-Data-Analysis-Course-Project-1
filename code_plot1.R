setwd('C:\\Users\\padmini\\Desktop\\exdata_data_household_power_consumption')
Consumption <- read.table( "household_power_consumption.txt" ,header=T, sep=";")
powerConsumption <-Consumption[as.character(Consumption$Date) %in% c("1/2/2007", "2/2/2007"),]
powerConsumption$dateTime = paste(powerConsumption$Date, powerConsumption$Time)
powerConsumption$dateTime <- strptime(powerConsumption$dateTime, "%d/%m/%Y %H:%M:%S")
png("plot1.png", width=480, height=480, units="px")
hist(as.numeric(as.character(Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
