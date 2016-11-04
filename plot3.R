#Packages loaded and the dataset defined in script plot1.R

Sys.setlocale("LC_ALL","English")

png("plot3.png", width = 480, height = 480)

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
        col = c("black", "red", "blue"),
        legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)

dev.off()
