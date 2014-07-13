# Going to check whether the file in the current dir.
if (!"Data_loading.R" %in% list.files()) {
        setwd("~/F:/Data Science/ExData_Plotting1/")
}

        source("Data_loading.R")
        
        # Plotting data
        
        png(filename = "plot4.png", 
            width = 480,
            height = 480,
            units = "px", 
            bg = "transparent")

        # combine multiple plots into one overall graph..
        # 4 figures arranged in 2 rows and 2 columns.

        par(mfrow = c(2, 2))
        
        # 1st Left plot
        
        plot(DateTime, Global_active_power, 
             type = "l",
             xlab = "", 
             ylab = "Global Active Power")

        # 1st Right plot

        plot(DateTime, Voltage,
             type = "l",
             xlab = "datetime",
             ylab = "Voltage")

        # 2nd Left plot

        plot(DateTime, Sub_metering_1, 
             type = "l",
             col = "black",
             xlab = "", 
             ylab = "Energy sub metering")


        lines(DateTime, Sub_metering_2, col = "red")

        lines(DateTime, Sub_metering_3, col = "blue")

        # Border remove
        
        legend("topright", 
               bty = "n",
               col = c("black", "red", "blue"),
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               lwd = 1)
        
        # 2nd Right plot

        plot(DateTime, Global_reactive_power, 
             type = "l",
             col = "black",
             xlab = "datetime",
             ylab = colnames(newData)[4])

        # Save plot

        dev.off()
