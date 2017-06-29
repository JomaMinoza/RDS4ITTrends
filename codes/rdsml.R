
a <- 1234
b = exp(x=a)
sqrt(x=b) -> c
boolean_vector <- c(T,T,T,T,F)

iris
iris[1,1]
length(iris[,1][iris[,1]<5])
log(length(iris[,1][iris[,1]>5]))*iris[,2]

A <- matrix(data = c(1,2,3,4,5,6,7,8),nrow = 4, ncol = 2,byrow = TRUE)
df <- data.frame(odd=seq(1,8,by=2),even=seq(2,8,by=2))
df$odd
df[1,]
df$sqrt <- sqrt(df$odd)
df$even[df$even>2]

> getwd()
> setwd("C://R/Files")
> getwd()

> data <- read.csv(file="C://R/Files/sample_data.csv", header=TRUE, sep=",")
> setwd("C://R/Files")
> data <- read.csv(file="sample_data.csv", header=TRUE, sep=",")

learning <- data.frame(hours=c(0.50,0.75,1.00,1.25,1.50,1.75,1.75,2.00,2.25,2.50,2.75,3.00,3.25,3.50,4.00,4.25,4.50,4.75,5.00,5.50),result=c(0,0,0,0,0,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1))

if(1%%2==1){
    "Odd"
} else{
    "Even"
}
						</code></pre>							
					</section>
					<section>
						<h3>Functions</h3>
						<pre><code class="hljs" data-trim contenteditable>
even_checker <- function(n){
    if(n%%2==1){
       "Odd"
    } else{
       "Even"
    }   
}
even_checker(123)
even_checker(789)
vector <- seq(1:15)
even_checker <- function(n){
    if(n%%2==1){
       "Odd"
    } else{
       "Even"
    }   
}
mapply(even_checker,vector)

#install.packages('car','ggplot2','MASS')
library(car)
library(ggplot2) # for some nice looking graphs!
library(MASS)
head(Prestige,5)
data <- Prestige[,c(1:2)]
head(data,5)
plot(x=data$education,y=data$income)


model = lm(income ~ education, data = data)
summary(model)

learning <- data.frame(hours=c(0.50,0.75,1.00,1.25,1.50,1.75,1.75,2.00,2.25,2.50,2.75,3.00,3.25,3.50,4.00,4.25,4.50,4.75,5.00,5.50),pass=c(0,0,0,0,0,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1))
model <- glm(formula = pass ~ hours, family = binomial(logit),
data = learning)
summary(model)

1 - pchisq(27-16, df=1)	

model$coefficients
model$coefficients[1]
model$coefficients[2]

a <- model$coefficients[1]
b <- model$coefficients[2]

a <- model$coefficients[1]
b <- model$coefficients[2]
exp(x=a+b*1)/(1+exp(x=a+b*1))