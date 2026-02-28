data("AirPassengers")
# Verify dataset
class(AirPassengers)
View(AirPassengers)
# Create dataframe with year & passengers
ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
# Create dataframe with year, month, passengers
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
# View dataframe
View(ap_df_months)
ap_df_months
# Basic Time Series Plot
plot(AirPassengers)


plot(
  AirPassengers,
  type = 'l',
  main = "Air Passenger Trend Analysis",
  xlab = "Months",
  ylab = "No. of Passengers",
  col = "green"
)
plot(
  AirPassengers,
  type = 'l',
  lwd = 3,
  main = "Air Passenger Trend Analysis",
  xlab = "Months",
  ylab = "No. of Passengers",
  col = "green"
)
points(
  AirPassengers,
  type = 'o',
  pch = 16,
  col = 'blue'
)
grid()
# ggplot2 Visualization
library(ggplot2)
ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = "darkgreen", linewidth = 0.6) +
  geom_point(color = "red", size = 0.6) +
  geom_smooth(se = FALSE, color = "orange") +
  labs(
    title = "Trend Analysis of Air Passengers",
    subtitle = "From 1949 to 1960",
    caption = "Using built-in AirPassengers dataset",
    x = "Year",
    y = "Number of Passengers"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14 , hjust=0.5 ,color="green"),
    plot.subtitle = element_text(face = "italic", size = 13 , hjust=0.5 , color="brown"),
    plot.caption = element_text(face="bold" , size=12 , hjust =0 ,color="red")
  )

