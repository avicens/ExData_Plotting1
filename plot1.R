setwd("~/cursos/data_science_Coursera/4_exploring_data/assignment1/")

#Load file and assign column names
hpc<-read.table("subset_household_power_consumption.txt",sep=";", header = F, na.strings = "?")
colnames(hpc)<-c("Date","Time","GlobalActivePower","GlobalReactivePower","Voltage","GlobalIntensity","Sub_metering1","Sub_metering2","Sub_metering3")

#Create a variable with Date/Time (POSIXlt) format
hpc$Date<-as.Date(hpc$Date, format="%d/%m/%Y"); hpc$Time<-as.character(hpc$Time)
dt<-paste(hpc$Date,hpc$Time, sep=" "); dt<-strptime(dt, "%Y-%m-%d %H:%M:%S")
hpc$Date.Time<-dt

#I save the dataframe as a R object to be used in the oter scripts
save(hpc,file="consumption")

#Generating Plot 1 (a histogram showing the distribution of "Global Active Power" variable)
png(filename = "plot1.png", width = 480, height = 480)
hist(hpc$GlobalActivePower, col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()


