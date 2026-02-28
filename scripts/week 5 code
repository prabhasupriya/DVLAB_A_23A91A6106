# Load built-in iris dataset
data("iris")

# View structure and data
str(iris)
View(iris)
?iris
dim(iris)
# -------------------------------------------------
# 1️⃣ Simple Scatter Plot
# -------------------------------------------------
plot(iris$Sepal.Length, iris$Sepal.Width)

# -------------------------------------------------
# 2️⃣ Scatter Plot with Labels
# -------------------------------------------------
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length (cm)",
  ylab = "Sepal Width (cm)",
  col = "blue",
  pch = 16
)

# -------------------------------------------------
# 3️⃣ Multivariate Scatter Plot (Color by Species)
# -------------------------------------------------
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Width by Species",
  xlab = "Sepal Length (cm)",
  ylab = "Sepal Width (cm)",
  col = as.numeric(iris$Species),
  pch = 16
)

# Add legend
legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:length(levels(iris$Species)),
  pch = 16
)

# -------------------------------------------------
# 4️⃣ Scatter Plot Matrix (Multiple Variables)
# -------------------------------------------------
pairs(
  iris[, 1:4],
  main = "Scatter Plot Matrix of Iris Dataset",
  col = as.numeric(iris$Species),
  pch = 16
)

# Optional: Add legend separately
legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:length(levels(iris$Species)),
  pch = 16
)

