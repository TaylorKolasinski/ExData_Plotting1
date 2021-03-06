source('load_data.R')
png(filename='plots/plot_4.png')

par(mfrow=c(2,2))
plot(power.df$date.time, power.df$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

plot(power.df$date.time, power.df$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

plot(power.df$date.time, power.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(power.df$date.time, power.df$Sub_metering_2, col='red')
lines(power.df$date.time, power.df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

plot(power.df$date.time, power.df$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

dev.off()
