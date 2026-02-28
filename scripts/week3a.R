data(iris)
?iris

# show first 10 rows
head(iris, 10)

str(iris)
class(iris)
View(iris)

# Basic bar chart (species count)
barplot(
  table(iris$Species),
  main = "Count of Iris Species",
  xlab = "Species",
  ylab = "Number of Samples",
  col = "steelblue"
)

# Mean sepal length per species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)

barplot(
  mean_sepal,
  col = "orange",
  main = "Average Sepal Length by Species",
  xlab = "Species",
  ylab = "Mean Sepal Length"
)

# Grouped data
group_mean <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)

# Clustered bar chart
barplot(
  group_mean,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Clustered Bar Chart: Sepal vs Petal"
)

# Stacked bar chart
barplot(
  group_mean,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal vs Petal"
)

