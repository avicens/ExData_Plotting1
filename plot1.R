load("consumption") #Load hpc dataframe

#Generating Plot 1 (a histogram showing the distribution of "Global Active Power" variable)
png(filename = "plot1.png", width = 480, height = 480)
hist(hpc$GlobalActivePower, col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()


