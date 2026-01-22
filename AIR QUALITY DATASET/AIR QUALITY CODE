data(airquality)
?airquality
head(airquality,10)
str(airquality)
class(airquality)

airquality$Temp
View(airquality)
barplot(
  table(airquality$Temp),
  main="variation of temperatute ",
  xlab ="Temperature ",
  ylab="month",
  col='steelblue'
)

barplot(
  table(airquality$Ozone),
  main="ozone value",
  xlab ="ozone value",
  ylab="Number of  Items",
  col='steelblue'
)
mean_temp <- tapply(airquality$Temp , airquality$Month ,mean)
mean_temp

barplot(
  mean_temp,
  col='orange',
  main="Average temperature by month",
  xlab="month",
  ylab="Mean temperature"
)

mean_temp <- tapply(
  airquality$Temp,
  airquality$Month,
  mean,
  na.rm = TRUE
)

barplot(
  mean_temp,
  col = "steelblue",
  main = "Average Temperature by Month",
  xlab = "Month",
  ylab = "Mean Temperature"
)

mean_ozone <- tapply(
  airquality$Ozone,
  airquality$Month,
  mean,
  na.rm = TRUE
)

barplot(
  mean_ozone,
  col = "orange",
  main = "Average Ozone by Month",
  xlab = "Month",
  ylab = "Mean Ozone"
)

group_mean <- rbind(
  Ozone = tapply(airquality$Ozone, airquality$Month, mean, na.rm = TRUE),
  Solar_Radiation = tapply(airquality$Solar.R, airquality$Month, mean, na.rm = TRUE)
)

barplot(
  group_mean,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = rownames(group_mean),
  main = "Grouped cluster Bar Chart: Ozone vs Solar Radiation",
  xlab = "Month",
  ylab = "Mean Value"
)

barplot(
  group_mean,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = rownames(group_mean),
  main = "Grouped stacked  Bar Chart: Ozone vs Solar Radiation",
  xlab = "Month",
  ylab = "Mean Value"
)
