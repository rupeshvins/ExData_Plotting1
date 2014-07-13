# Going to check whether the file in the current dir.
if (!"Data_loading.R" %in% list.files()) {
        setwd("~/F:/Data Science/ExData_Plotting1/")
        
}
        source("Data_loading.R")
        dim(newData) 
        attach(newData)
        
        # Plotting data
        
        png(filename="plot1.png",
            width=480, 
            height=480,
            units="px",
            bg ="transparent")
        
        #  By breaks we giving the number of cells for the histogram.
        
        hist(Global_active_power, 
             main= "Global Active Power", 
             xlab= "Global Active Power (kilowatts)",
             ylab = "Frequency",
             col= "red",
             breaks=12, ylim=c(0, 1200))
        
        # Saving plot
        
        dev.off()

