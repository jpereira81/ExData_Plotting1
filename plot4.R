#Packages loaded and the dataset defined in script plot1.R

Sys.setlocale("LC_ALL","English")

png("plot4.png", width = 480, height = 480)

par(mfcol = c(2,2))

#graph1
with(
        dataset,
        plot(
                DateTime, Global_active_power,
                ylab = "Global Active Power(kilowatts)",
                type = "l",
                xlab = ""
        )
)

#graph2
with(
        dataset,
        plot(
                DateTime, Sub_metering_1,
                ylab = "Energy sub metering",
                type = "l",
                xlab = ""
        )
)

with(
        dataset,
        lines(
                DateTime, Sub_metering_2,
                col = "red"
        )
)

with(
        dataset,lines(
                DateTime, Sub_metering_3,
                col = "blue"
        )
)

legend(
        "topright",
        lwd = 1,
        bty = "n",
        col = c("black", "red", "blue"),
        legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)

#graph3

with(
        dataset,
        plot(
                DateTime, Voltage,
                type = "l"
        )
)


#graph4

with(
        dataset,
        plot(
                DateTime, Global_reactive_power,
                type = "l"
        )
)




dev.off()