
getExData <- function() {
rawdata = read.csv("household_power_consumption.txt",sep=";", stringsAsFactors = FALSE)
data = rawdata[as.Date(rawdata[,1], "%d/%m/%Y") <= as.Date("2007-02-02"),]
data = data[as.Date(data[,1], "%d/%m/%Y") >= as.Date("2007-02-01"),]
remove(rawdata)

datetime = strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S")
data = cbind(data, datetime)

data[,3] = as.numeric(data[,3])

return(data)
}

