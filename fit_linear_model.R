#Script to estimate the model parameters using a linear approximation

library(dplyr)

growth_data <- read.csv("experiment.csv")
head(growth_data)

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N))

# simplifying graph1 to a linear model (line equation)
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2000)
# simplifying graph2 to a linear equation
model2 <- lm(N ~ 1, data_subset2)
summary(model2)
