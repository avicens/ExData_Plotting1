setwd("~/cursos/data_science_Coursera/4_exploring_data/assignment1/")
load("consumption") #Load hpc dataframe

#Generating Plot 2 (plot of "Global Active Power" by day)
png(filename = "plot2.png", width = 480, height = 480)
plot(hpc$GlobalActivePower, type="l",xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
axis(1,at = c(0,(nrow(hpc))/2,nrow(hpc)), labels = c("Thu", "Fri", "Sat"))
dev.off()
