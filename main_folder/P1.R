library(tidyverse)
library(modeldata)


x <- 1:10
y <- rnorm(10)


df <- data.frame(x=x, y=y)



ggplot(df, aes(x, y)) +
  geom_point(col = "red",
             size = 2)
