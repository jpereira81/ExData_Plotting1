#Packages loaded and the dataset defined in script plot1.R

Sys.setlocale("LC_ALL","English")

png("plot2.png", width = 480, height = 480)

with(
        dataset,
        plot(
                DateTime, Global_active_power,
                ylab = "Global Active Power(kilowatts)",
                type = "l",
                xlab = ""
        )
)

dev.off()

