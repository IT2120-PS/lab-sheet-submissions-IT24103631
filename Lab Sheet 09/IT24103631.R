setwd("C:\\Users\\DULITHMA\\Desktop\\IT24103631")
#Q1
#i)
X <- rnorm(25, mean = 45, sd= 2)
print(X)

#ii)
# H0: mu >= 46 vs H1: mu < 46
# significance level - 5% 
print(t.test(X, mu = 46, alternative = "less"))
