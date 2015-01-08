source("getExData.R")
data = getExData()

png(filename="plot4.png")
par(mfcol=c(2,2))

#plot 1
plot(data[,10], data[,3], type="l", xlab="",ylab="Global Active Power")

#plot 2
plot(data[,10],data[,7],type="l", xlab="", ylab="Energy sub metering",  )
lines(data[,10],data[,8], col="red")
lines(data[,10],data[,9], col="blue")
legend("topright", lty=1, col=c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n")

#plot 3
plot(data[,10],data[,5], type="l", xlab="datetime",ylab="Voltage")

#plot 4
plot(data[,10], data[,4], type="l", xlab="datetime",ylab="Global_reactive_power")

dev.off()