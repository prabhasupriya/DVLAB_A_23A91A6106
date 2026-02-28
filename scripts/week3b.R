
# Load dataset
data(airquality)

str(airquality)
View(airquality)
class(airquality)
?airquality

#  Basic Histogram of Ozone
hist(airquality$Ozone,
     main = "Histogram of Ozone Concentration",
     xlab = "Ozone (ppb)",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

# 🔹 Improved Histogram with Density

hist(airquality$Ozone,
     probability = TRUE,
     main = "Ozone Distribution with Density Curve",
     xlab = "Ozone (ppb)",
     col = "lightgreen",
     border = "black")

lines(density(airquality$Ozone, na.rm = TRUE),
      col = "red",
      lwd = 2)

# Box Plot of Ozone

boxplot(airquality$Ozone,
        main = "Box Plot of Ozone Levels",
        ylab = "Ozone (ppb)",
        col = "orange")

#  Box Plot by Month (Grouped)

boxplot(Ozone ~ Month,
        data = airquality,
        main = "Monthly Ozone Variation",
        xlab = "Month",
        ylab = "Ozone (ppb)",
        col = c("yellow","pink","green","skyblue","orange"))


#  Scatter Plot: Ozone vs Temperature
plot(airquality$Temp, airquality$Ozone,
     main = "Ozone vs Temperature",
     xlab = "Temperature (°F)",
     ylab = "Ozone (ppb)",
     col = "blue",
     pch = 16)

grid()


# Line Plot of Ozone Over Time

plot(airquality$Ozone,
     type = "l",
     main = "Trend of Ozone Levels Over Days",
     xlab = "Observation Index",
     ylab = "Ozone (ppb)",
     col = "darkgreen",
     lwd = 2)

points(airquality$Ozone, pch = 16, col = "red")

# 🔹 ggplot2 Visualizations

library(ggplot2)

# Histogram (professional)
ggplot(airquality, aes(x = Ozone)) +
  geom_histogram(fill = "steelblue",
                 color = "black",
                 bins = 20,
                 na.rm = TRUE) +
  labs(title = "Histogram of Ozone Concentration",
       x = "Ozone (ppb)",
       y = "Frequency") +
  theme_minimal()


# ggplot Box Plot by Month

ggplot(airquality,
       aes(x = factor(Month), y = Ozone, fill = factor(Month))) +
  geom_boxplot(na.rm = TRUE) +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Monthly Ozone Distribution",
       x = "Month",
       y = "Ozone (ppb)",
       fill = "Month") +
  theme_minimal()

#  ggplot Scatter with Trend Line
ggplot(airquality,
       aes(x = Temp, y = Ozone)) +
  geom_point(color = "purple", na.rm = TRUE) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Relationship Between Temperature and Ozone",
       x = "Temperature (°F)",
       y = "Ozone (ppb)") +
  theme_minimal()

