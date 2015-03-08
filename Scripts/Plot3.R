library(lubridate)
# Load dateframe into workspace
data <- readRDS('SubData.rds')

# Open png device
png('Plots/plot3.png', width = 480, height = 480)

# create Plot
plot(data$FullDate, data$Sub_metering_1, type = 'l', xlab = '',
     ylab = 'Energy sub metering')
lines(data$FullDate, data$Sub_metering_2, col = 'red')
lines(data$FullDate, data$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 'solid')


# Closs png device
dev.off()
