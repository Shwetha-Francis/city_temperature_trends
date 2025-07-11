# WEEK 1 ASSIGNMENT - CITY TEMPERATURE TRENDS: Analyzing Weekly Climate Patterns Using R


# INTRODUCTION 
# This project focuses on analyzing weekly temperature trends of my hometown,
# Alappuzha, using basic R programming skills. It involves creating and working 
# with vectors, performing simple statistical operations, and visualizing data 
# through line plots. The analysis includes identifying temperature extremes, 
# counting warmer weeks, simulating a heatwave by increasing temperatures, and 
# comparing the results with another city, Kochi. This assignment helps in 
# understanding how R can be used for real-world data analysis in a clear and 
# practical way.

# OBJECTIVES
# 1. Learn to use basic R programming tools like variables and vectors.
# 2. Create and work with 10 weeks of temperature data.
# 3. Find the highest, lowest, and average temperatures.
# 4. Count how many weeks had temperatures above 30°C.
# 5. Pick out weeks with temperatures between 25°C and 35°C.
# 6. Add 2°C to all temperatures to show a heatwave.
# 7. Draw a line graph to show temperature changes.
# 8. Compare temperatures between two cities (Alapuzha and Kochi).
# 9. Practice turning data into easy-to-understand visuals.




# Creating a numeric vector with 10 weeks of average temperatures
temp_data <- c(31.5, 31.2, 30.8, 30.5, 29.8, 28.9, 28.5, 28.3, 28.6, 28.7)  # Average temperatures in °C

# Creating a character vector for the weeks
weeks <- paste("Week", 1:10)  # Labels from Week 1 to Week 10

names(temp_data) <- weeks# Naming each temperature value with corresponding week

# View the temperature data

cat("Weekly temperature data - Alapuzha ","\n") #cat() for a string to display and  \n adds a new line after the text 
print(temp_data)

# Calculations

max_temp <- max(temp_data)#  Maximum temperature
cat("Maximum temperature","\n")
max_temp  # prints highest temperature

min_temp <- min(temp_data)# Minimum temperature
cat("Minimum temperature","\n")
min_temp  # prints lowest temperature

mean_temp <- mean(temp_data)# Average temperature
cat("Average temperature","\n")
mean_temp  # prints average temperature

weeks_above_30 <- sum(temp_data > 30)# Count of weeks with temperature above 30°C
cat("Count of weeks above 30°","\n")
weeks_above_30

valid_weeks <- weeks[temp_data >= 25 & temp_data <= 35]# Weeks with temperature between 25°C and 35°C
cat("Week with temperature between 25°C and 35°C","\n")
valid_weeks

heatwave_temp <- temp_data + 2# Simulate a heatwave: Add 2°C to each week
cat("Heatwave in Alapuzha ","\n")
heatwave_temp

# Plotting temperature trend
plot(temp_data, type = "o", 
     col = "blue",
     xlab = "Week",
     ylab = "Temperature (°C)",
     main = "Weekly Temperature Trend - Alappuzha",
     xaxt = "n") # tells R not to draw the default x-axis.
axis(1, at=1:10, labels=weeks)# Customize x-axis with week labels

# Temperature data for Kochi
kochi_temp <- c(28.7, 29.9, 28.4, 30.5, 31.2, 29.8, 28.6, 32.0, 30.2, 27.8)
names(kochi_temp) <- weeks

# View the temperature data
cat("Weekly temperature data - Kochi ","\n")
print(kochi_temp)

# Plot temperature data for Alappuzha
plot(temp_data, type = "o",
     col = "blue",
     xlab = "Week", 
     ylab = "Temperature (°C)",
     main = "Weekly Temperature Trend - Alappuzha vs Kochi",
     xaxt = "n", 
     ylim = c(25, 37))
# Customize x-axis with week labels
axis(1, at = 1:10, labels = weeks)
# Add Kochi temperature data to the plot
lines(kochi_temp, type = "o", col = "green")



# CONCLUSION
# In this assignment, I used basic R programming skills to analyze weekly 
# temperature data for my hometown, Alappuzha. I created and explored a 
# temperature dataset, performed simple calculations, and simulated a heatwave. 
# I also visualized the data using line plots and compared it with another city,
# Kochi. This helped me understand how to use R for real-world data analysis 
# and develop skills in data handling, calculation, and visualization in 
# a meaningful way.