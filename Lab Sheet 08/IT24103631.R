setwd("C:\\Users\\DULITHMA\\Desktop\\IT24103631")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)
attach(data)

#Q1
population_mean <- mean(Weight.kg.)
population_mean
population_sd <- sqrt(var(Weight.kg.))

#Q2
samples <- c()
n <- c()
for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n, paste('s',i))
}
samples
n
colnames(samples) = n
n
samples
s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)
s.sd <- sqrt(s.vars)
s.means
s.sd

#Q3
sample_mean <- mean(s.means)
sample_mean

sample_sd <- sd(s.means)
sample_sd

population_mean # true mean
sample_mean

population_variance <- var(Weight.kg.)
true_variance = population_variance/6 # true variance
true_sd <- sqrt(true_variance) # true sd
true_sd
sample_sd
