data(iris)

str(iris)

View(iris)

class(iris)
?iris

# basic box plot
boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal Length",
        ylab = "Sepal Length",
        col = "skyblue")

# grouped box plot
boxplot(iris$Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length for Species",
        ylab = "Sepal Length",
        xlab = "Species",
        col = c("skyblue", "pink", "green"))

# multiple variables
boxplot(iris,
        main = "Multiple Variables Box Plot",
        col = "green")

boxplot(iris[, 1:4],
        main = "Multiple Variables Box Plot",
        col = c("green", "pink", "orange", "skyblue"))

# ggplot2
library(ggplot2)

ggplot(iris,
       aes(x = Species, y = Sepal.Length)) +
  geom_boxplot()

ggplot(iris,
       aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_minimal()

# ✅ manual color pattern (FIXED)

ggplot(iris,
       aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" = "steelblue",
      "virginica" = "green"
    )
  ) +
  theme_minimal()

