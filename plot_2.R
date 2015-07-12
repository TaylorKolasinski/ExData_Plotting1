source('load_data.R')
png(filename='plots/plot_2.png')

plot(power.df$date.time, power.df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

dev.off()
