#Script to plot data and model

growth_data <- read.csv("experiment.csv")
head(growth_data)

logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)
}

N0 <- 879
  # found in data set
r <-  0.0100086
  # intercept of model1
K <- 59790000000
# estimate from model2 (estimate of the slope)
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point() #+
# scale_y_continuous(trans='log10')

# making a list of packages and saving them in a file
sink(file = "package-versions.txt")
sessionInfo()
sink()
# placing this file in MY repository on github
# in terminal tab type:
# git config --global user.email "<YOUR_EMAIL>"

# then select files from git panel (next to environment)

