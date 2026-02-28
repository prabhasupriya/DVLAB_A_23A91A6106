# -------------------------------
# Load required library
# -------------------------------
library(ggplot2)

# -------------------------------
# Load airquality dataset
# -------------------------------
data("airquality")

# View structure (optional)
str(airquality)
head(airquality)
?airquality
View(airquality)
# -------------------------------
# Create Histogram of Temperature
# Temp = Daily maximum temperature at LaGuardia Airport
# -------------------------------
ggplot(airquality, aes(x = Temp)) +
  geom_histogram(
    binwidth = 3,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Histogram of Daily Maximum Temperature at LaGuardia Airport",
    x = "Temperature (°F)",
    y = "Frequency"
  ) +
  theme_minimal()

