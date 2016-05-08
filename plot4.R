data<-read.table("household_power_consumption2.txt", header = TRUE, sep = ";")
dt<-paste(data$Date,data$Time)
x<-strptime(dt,"%d/%m/%Y %H:%M:%S")
par(mfrow=c(2,2))

plot(x,data$Global_active_power,ylab = "Global Active Power (kilowatts)",type="l",xlab="")

plot(x,data$Voltage,ylab = "Voltage",type="l",xlab="datetime")

plot(x,data$Sub_metering_1,ylab = "Energy sub metering",type="l",xlab="")
points(x,data$Sub_metering_2, col="red",type="l")
points(x,data$Sub_metering_3, col="blue",type="l")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),bty="n",cex=0.5)

plot(x,data$Global_reactive_power,ylab = "Global_reactive_power",type="l",xlab="datetime")


dev.copy(png,file="plot4.png")
dev.off()