library(lubridate)
# Load dateframe into workspace
data <- readRDS('SubData.rds')

# Open png device
png('Plots/plot2.png', width = 480, height = 480)

# create Plot
plot(data$FullDate, data$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (Kilowatss)')

# Closs png device
dev.off()
