data<-read.table("household_power_consumption2.txt", header = TRUE, sep = ";")
hist(data$Global_active_power,xlab = "Global Active Power (kilowatts)", col="red", main="Global active power")

dev.copy(png,file="plot1.png")
dev.off()

