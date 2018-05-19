setwd("~/cursos/data_science_Coursera/4_exploring_data/assignment1/")
load("consumption")

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

#Generate a screen with multiple plots
#Plot 1: Global Active Power by day
plot(hpc$GlobalActivePower, type="l",xaxt="n", xlab="", ylab="Global Active Power")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))

#Plot2: Voltage per day
plot(hpc$Voltage, type="l",xaxt="n", xlab="datetime", ylab="Voltage")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))

#Plot 3: multiple plot to compare the enrgy consumption of each metering per day
plot(hpc$Sub_metering1, type="l", col="black", xaxt= "n", xlab ="", ylab="Energy sub metering")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))
points(hpc$Sub_metering2, type="l", col="red")
points(hpc$Sub_metering3, type="l", col="blue")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=0.8,bty = "n")

#Plot4: Global reactive power per day
plot(hpc$GlobalReactivePower, type="l",xaxt="n", xlab="datetime", ylab="Global Reactive Power")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))

dev.off()