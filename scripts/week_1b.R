#  Load dataset
data(airquality)

str(airquality)
View(airquality)
class(airquality)
?airquality
# Basic Histogram of Daily Maximum Temperature

hist(airquality$Temp,
     main = "Histogram of Daily Maximum Temperature at La Guardia Airport",
     xlab = "Temperature (°F)",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

# Improved Histogram with Breaks

hist(airquality$Temp,
     main = "Temperature Distribution (Improved)",
     xlab = "Temperature (°F)",
     col = "lightgreen",
     breaks = 10,
     border = "black")

# Histogram with Density Curve

hist(airquality$Temp,
     probability = TRUE,
     main = "Histogram with Density Curve",
     xlab = "Temperature (°F)",
     col = "orange",
     border = "black")

lines(density(airquality$Temp, na.rm = TRUE),
      col = "blue",
      lwd = 2)

# Box Plot of Temperature


boxplot(airquality$Temp,
        main = "Box Plot of Daily Maximum Temperature",
        ylab = "Temperature (°F)",
        col = "pink")


# ggplot2 Histogram (Professional)


library(ggplot2)

ggplot(airquality, aes(x = Temp)) +
  geom_histogram(fill = "steelblue",
                 color = "black",
                 bins = 15) +
  labs(title = "Histogram of Daily Maximum Temperature",
       x = "Temperature (°F)",
       y = "Frequency") +
  theme_minimal()



#  ggplot2 Histogram by Month (Grouped)


ggplot(airquality,
       aes(x = Temp, fill = factor(Month))) +
  geom_histogram(color = "black", bins = 15) +
  labs(title = "Temperature Distribution by Month",
       x = "Temperature (°F)",
       y = "Frequency",
       fill = "Month") +
  theme_minimal()
