

library(tidyverse)
library(modeldata)
library(gapminder)
library(here)

gapminder


p <- ggplot(mapping = aes(x = gdp <- c(340,227,909, 126),
                          y = lifexp <- c(65,51, 81, 40) , size = pop <- c(31,200, 80, 20),
                          color = continent <- c("europe", "amer", "europe", "asia")))
p + geom_point()
P + coord_cartesian() + scale_x_log10()
p + labs(x = "Log GDP",
         y = "Life Expetancy",
         title = "A Gapminder")


p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp, size = pop, 
                          color = continent))

pout <- p + geom_point() 
pout + coord_cartesian() + scale_x_log10()

pout + labs(x = "Log GDP",
         y = "Life Expetancy",
         title = "A Gapminder")

ggsave(here::here("./Figures", 'p3.png'),plot = pout)



p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp, size = pop, 
                          color = continent))
# lm is used for linear model
p + geom_point() + geom_smooth(method = "lm") 
p + coord_cartesian()+scale_x_log10()

p + labs(x = "Log GDP",
         y = "Life Expetancy",
         title = "A Gapminder")




p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp, size = pop, 
                          color = continent))
# lm is used for linear model
p + geom_point() + geom_smooth(method = "lm") 
p + coord_cartesian() + scale_x_log10(labels = scales::dollar)

p + labs(x = "Log GDP",
         y = "Life Expetancy",
         title = "A Gapminder")



