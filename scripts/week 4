data(iris)

str(iris)

View(iris)

class(iris)
?iris

#basic box plot

boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main = "Box plot for sepal length",
ylab="Sepal_length",
col= 'skyblue')


boxplot(iris$Sepal.Length ~Species,
        data = iris,
        main = "sepal length for Sepecies ",
        ylab="Sepal_length",
        xlab ="Species",
        col= c('skyblue' ,'pink','green'))


boxplot(iris,
        main = "multi  variables for Box plot",col= 'green'
)


boxplot(iris[,1:4],
        main = "multi  variables for Box plot",
        col= c('green','pink','orange','skyblue'))

library(ggplot2)
ggplot(iris,
       aes(x=Species, y = Sepal.Length))+
  geom_boxplot()

ggplot(iris , aes(x= Species , y = Sepal.Length , fill = Species))+
  geom_boxplot()+
  theme_minimal()

#using manual color patteren 

ggplot(iris , aes(x = Species , y= Sepal.Length , fill = Species
                  ))+
  geom_boxplot()+
  scale_fill_manual((
    values= c(
      "setosa"="red",
      "versicolor" = "steelblue",
      "virginica"="green"
    )
  )+
    theme_minimal()

  
