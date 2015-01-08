source("getExData.R")
data = getExData()

png(filename="plot2.png")
plot(data[,10], data[,3], type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()