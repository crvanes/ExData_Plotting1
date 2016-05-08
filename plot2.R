data<-read.table("household_power_consumption2.txt", header = TRUE, sep = ";")
dt<-paste(data$Date,data$Time)
x<-strptime(dt,"%d/%m/%Y %H:%M:%S")
plot(x,data$Global_active_power,ylab = "Global Active Power (kilowatts)",type="l")

dev.copy(png,file="plot2.png")
dev.off()


