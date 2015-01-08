

source("getExData.R")
data = getExData()

png(filename="plot1.png")
hist(data[,3], col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
