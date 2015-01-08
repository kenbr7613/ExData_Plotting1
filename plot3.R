source("getExData.R")
data = getExData()

png(filename="plot3.png")
plot(data[,10],data[,7],type="l", xlab="", ylab="Energy sub metering",  )
lines(data[,10],data[,8], col="red")
lines(data[,10],data[,9], col="blue")
legend("topright", lty=1, col=c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()