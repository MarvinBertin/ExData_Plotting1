library(lubridate)

# download, save and unzip the required raw data for this project

# read data into a data frame with approriate fromatting
data <- read.table('household_power_consumption.txt', header =TRUE, sep = ';',
           colClasses = c(rep('character',2), rep('numeric',7)), na.strings = '?')

# Convert Date and Time into Date/Time classes
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)

# subset data to only what is needed
data <- subset(data, year(Date) == 2007 & month(Date) == 2 &
                   (day(Date) == 1 | day(Date) == 2))

# Create a new variable with both date and time
data$FullDate <- data$Date + data$Time

# save clean and subsetted data frame
saveRDS(data, file = 'SubData.rds')

# Open png device
png('Plots/plot1.png', width = 480, height = 480)

# create histogram
hist(data$Global_active_power, col = 'red', xlab = 'Global Active Power (Kilowatts)',
     main = 'Global Active Power')

# Closs png device
dev.off()
