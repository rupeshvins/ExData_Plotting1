# This R Code is for loading the dataset.
filename <- "./household_power_consumption.txt"

# Using colClasses, data load more quickly.

data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
# Get Dimension of given data frame.

dim(data) # 2075259 9

# Now make the data available to the R Search Path.

attach(data)

# For getting 2 days data.

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)

# Format for date time.

newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

# To set rownames in the data frame newData.

rownames(newData) <- 1:nrow(newData)

dim(newData) 

# After running script got newData with 2880 rows and 10 column.

attach(newData)


