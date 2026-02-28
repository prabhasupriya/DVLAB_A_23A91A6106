# Load dataset
data(VADeaths)

# View data
VADeaths
View(VADeaths)
?VADeaths
class(VADeaths)

# Convert to data frame
va_df <- as.data.frame(VADeaths)

# Add age groups column
va_df$AgeGroups <- rownames(VADeaths)

# Display dataframe
va_df

# Reshape to long format
va_long <- reshape(va_df,
                   direction = "long",
                   varying = colnames(VADeaths),
                   v.names = "DeathRate",
                   timevar = "Population",
                   times = colnames(VADeaths)
)

# -----------------------------
# Base R Histograms
# -----------------------------

# Basic histogram
hist(va_long$DeathRate,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "Frequency")

# Colored histogram
hist(va_long$DeathRate,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "Frequency",
     col = "lightblue",
     border = "darkblue")

# Histogram with fixed number of bins
hist(va_long$DeathRate,
     breaks = 8,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "Frequency",
     col = "lightblue",
     border = "darkblue")

# Histogram with custom break points
hist(va_long$DeathRate,
     breaks = seq(0, 80, by = 10),
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "Frequency",
     col = "lightblue",
     border = "darkblue")

# -----------------------------
# ggplot2 Histogram
# -----------------------------

# Load library
library(ggplot2)

# ggplot histogram
ggplot(va_long, aes(x = DeathRate)) +
  geom_histogram(bins = 8, fill = "lightblue", color = "darkblue") +
  labs(title = "Histogram of VA Deathrates",
       x = "Deathrate Bins",
       y = "Frequency") +
  theme_minimal()

