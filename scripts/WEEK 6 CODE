# DV Lab – Week 6
# Name:BANDARU PRABHA SUPRIYA
# Roll No:23A91A6106

data(diamond)
data(package=.packages((all.available = TRUE)))
library(ggplot2) # loading the library 

data(diamonds)

str(diamonds) # structure of dataset
dim(diamonds) #dimension of dataset
?diamonds # about the dataset 
#basic version
plot(diamonds$carat , diamonds$price)

#improved version
plot(diamonds$carat , diamonds$price ,
     col= rgb(0,0,1,0.1),pch =16,
     main ="diamonds carat vs price using hexbin plot ")
#hexbin plot

install.packages('hexbin')
library(hexbin)
hb<-hexbin(diamonds$carat , diamonds$price , xbins=40)
plot(hb , main = "diamonds carat vs price ")
#using gpplot graph 
ggplot(diamonds , aes(x=carat , y=price))+ geom_hex()

#using ggplot labeled hexbins plot
ggplot(diamonds , aes(carat , price)) + geom_hex()+
  labs(x="carat" , y="prices" ,title ="hexabins for categorical variables ")+
theme_minimal()

#with geom_hex
ggplot(diamonds, aes(carat , price)) + geom_hex(bins=10)

#with color professional palette(viridis)

ggplot(diamonds , aes(carat ,price)) + geom_hex(bins =10) + scale_fill_viridis_c()+ theme_dark()
# with scale_fill_gradient
ggplot(diamonds , aes(carat, price)) + geom_hex(bins=10) + scale_fill_gradient(low="brown" , high ="green")+theme_minimal()

#add legen title 

ggplot(diamonds ,aes(carat ,price)) + geom_hex(bins=10) +scale_fill_viridis_c(name="Count")
+labs(title="professionalplattte usinf viridis" , x="carat" , y= "price")+
  theme_minimal(())

#faceted hexbin - add cut attribute to two columns
ggplot(diamonds , aes(carat , price))+ geom_hex(bins=10) + scale_fill_viridis_c()+ facet_wrap(~cut)
+ theme_minimal()

#log scale
ggplot(diamonds , aes(carat , price))+ geom_hex(bins=10) + scale_fill_viridis_c()+ facet_wrap(~cut)
+ theme_minimal()+ scale_y_log10()
