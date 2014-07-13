# Going to check whether the file in the current dir.
if (!"Data_loading.R" %in% list.files()) {
        setwd("~/F:/Data Science/ExData_Plotting1/")
}

        source("Data_loading.R")

        # Plotting data

        png(filename = "plot3.png", 
            width = 480,
            height = 480,
            units = "px",
            bg = "transparent")
        
        plot(DateTime, Sub_metering_1, 
             type = "l",
             col = "black",
             xlab = "",
             ylab = "Energy sub metering")


        lines(DateTime, Sub_metering_2, col = "red")

        lines(DateTime, Sub_metering_3, col = "blue")
        
        # For Topright rectangle box

        legend("topright", 
               col = c("black", "red", "blue"),
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lwd = 1)

        # Saving plot

        dev.off()

