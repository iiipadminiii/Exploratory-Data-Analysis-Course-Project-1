setwd('C:\\Users\\padmini\\Desktop\\exdata_data_household_power_consumption')
powerConsumption<- read.table('household_power_consumption.txt', sep=";", header= TRUE)
powerConsumption2 <- powerConsumption[as.character(powerConsumption$Date) %in% c("1/2/2007", "2/2/2007"),]
powerConsumption2$dateTime = paste(powerConsumption2$Date, powerConsumption2$Time)
powerConsumption2$dateTime <- strptime(powerConsumption2$dateTime, "%d/%m/%Y %H:%M:%S")
attach(powerConsumption2)
png("plot2.png", width=480, height=480, units="px")
plot(dateTime, as.numeric(as.character(Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()