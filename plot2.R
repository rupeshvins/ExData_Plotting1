# Going to check whether the file in the current dir.
if (!"Data_loading.R" %in% list.files()) {
        setwd("~/F:/Data Science/ExData_Plotting1/")
}
        
        source("Data_loading.R")
        
        # Plotting data
        
        png(filename = "plot2.png", 
            width = 480,
            height = 480,
            units = "px",
            bg = "transparent")
        
       plot(DateTime,
             Global_active_power, 
             type = "l",
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        
        # Saving plot
        
        dev.off()

