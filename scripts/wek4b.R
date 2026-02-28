
#  Load dataset

data(airquality)

# Explore dataset
str(airquality)
View(airquality)
class(airquality)
?airquality



#  Basic Box Plot – Ozone
# (remove NA because airquality has missing values)

boxplot(airquality$Ozone,
        main = "Box Plot of Ozone Levels",
        ylab = "Ozone (ppb)",
        col = "skyblue",
        na.rm = TRUE)

#  Box Plot – Solar Radiation

boxplot(airquality$Solar.R,
        main = "Box Plot of Solar Radiation",
        ylab = "Solar Radiation",
        col = "pink",
        na.rm = TRUE)

# Grouped Box Plot – Ozone by Month

boxplot(Ozone ~ Month,
        data = airquality,
        main = "Monthly Ozone Distribution",
        xlab = "Month",
        ylab = "Ozone (ppb)",
        col = c("yellow","pink","green","skyblue","orange"),
        na.rm = TRUE)


#  Multiple Parameters Box Plot

boxplot(airquality[, c("Ozone","Solar.R","Wind","Temp")],
        main = "Air Quality Parameters Box Plot",
        col = c("green","pink","orange","skyblue"),
        na.rm = TRUE)

# ggplot2 Visualizations

library(ggplot2)

# Box plot using ggplot
ggplot(airquality,
       aes(x = factor(Month), y = Ozone, fill = factor(Month))) +
  geom_boxplot(na.rm = TRUE) +
  labs(
    title = "Monthly Ozone Levels",
    x = "Month",
    y = "Ozone (ppb)",
    fill = "Month"
  ) +
  theme_minimal()

#  Manual color pattern (attractive)

ggplot(airquality,
       aes(x = factor(Month), y = Ozone, fill = factor(Month))) +
  geom_boxplot(na.rm = TRUE) +
  scale_fill_manual(
    values = c(
      "5" = "violet",
      "6" = "steelblue",
      "7" = "green",
      "8" = "orange",
      "9" = "pink"
    )
  ) +
  labs(
    title = "Monthly Ozone Levels (Custom Colors)",
    x = "Month",
    y = "Ozone (ppb)"
  ) +
  theme_minimal()

