setwd("~/cursos/data_science_Coursera/4_exploring_data/assignment1/")
load("consumption") #Load hpc dataframe

#Generating Plot 3 (multiple plot to compare the enrgy consumption of each metering per day)
png(filename = "plot3.png", width = 480, height = 480)

plot(hpc$Sub_metering1, type="l", col="black", xaxt= "n", xlab ="", ylab="Energy sub metering")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))
points(hpc$Sub_metering2, type="l", col="red")
points(hpc$Sub_metering3, type="l", col="blue")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1.2)
dev.off()