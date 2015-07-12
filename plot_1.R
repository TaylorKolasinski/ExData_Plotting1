# Creates the histogram for plot 1

source('load_data.R')
png(filename='plots/plot_1.png')

hist(power.df$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

dev.off()

