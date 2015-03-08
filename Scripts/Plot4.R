library(lubridate)
# Load dateframe into workspace
data <- readRDS('SubData.rds')

# Open png device
png('Plots/plot4.png', width = 480, height = 480)

# make grid of 4 plots
par(mfrow = c(2,2))

# create Plots
#top left plot
plot(data$FullDate, data$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')

#top right plot
plot(data$FullDate, data$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

#bottom left plot
plot(data$FullDate, data$Sub_metering_1, type = 'l', xlab = '',
     ylab = 'Energy sub metering')
lines(data$FullDate, data$Sub_metering_2, col = 'red')
lines(data$FullDate, data$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 'solid', bty='n')

#bottom right plot
plot(data$FullDate, data$Global_active_power, type = 'l', xlab = 'datetime', ylab = 'Global Reactive Power')

# Closs png device
dev.off()
