require(data.table)
require(lubridate)
require(dplyr)

setwd("D:/Data Science/Curso R/4. EDA")

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              destfile = "household_power_consumption.zip")

unzip("household_power_consumption.zip")

dataset <- fread("household_power_consumption.txt", na.strings = "?") %>%
        mutate(
                DateTime = dmy_hms(
                        paste(Date,Time)
                ),
                Date = dmy(Date)
        ) %>%
        filter(Date == "2007-02-01" | Date == "2007-02-02")

png("plot1.png", width = 480, height = 480)

with(
        dataset,
        hist(
                Global_active_power,
                col = "red",
                main = "Global Active Power",
                xlab = "Global Active Power(kilowatts)"
        )
)

dev.off()