library(tidyverse)
#install.packages("modeldata")
library(modeldata)
library(socviz)

?ggplot

?crickets
View(crickets)

ggplot(crickets, aes(x = temp,
                     y = rate,
                     color = species)) +
         geom_point() +
  labs(x = "Temperature",
       y = "Chirp rate",
       color = "SPECIES",
       title = "Cricket chirps",
       caption= "Source: McDonlad (2009")
scale_color_brewer(palette = "Dark2")



# Modifying basic properties of the plot


ggplot(crickets, aes(x = temp,
                     y = rate,)) +
  geom_point(color = "red",
             size = 5,
             alpha= 0.8,
             shape = "square") +
  labs(x = "Temperature",
       y = "Chirp rate",
       color = "SPECIES",
       title = "Cricket chirps",
       caption= "Source: McDonlad (2009")


# Another Layer
ggplot(crickets, aes(x = temp,
                     y = rate,
                     color = species)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE)+
  labs(x = "Temperature",
       y = "Chirp rate",
       color = "SPECIES",
       title = "Cricket chirps",
       caption= "Source: McDonlad (2009")


# Other Plots

# For single quantitative variable
ggplot(crickets, aes(x=rate)) +
  geom_histogram(bins =15)

# For two quantitative variable
ggplot(crickets, aes(x=rate)) +
  geom_freqpoly(bins =15)


ggplot(crickets, aes(x=species)) +
  geom_bar(color = "black",
           fill = "lightblue")

# For Single categorical variable
ggplot(crickets, aes(x=species,
                     fill = species)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_brewer(palette = "Dark2")



# One qualitative variable
ggplot(crickets, aes(x = species,
                      y = rate,
                     color = species)) +
  geom_boxplot(show.legend = FALSE) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal()



# faceting
# not great
ggplot(crickets, aes (x = rate,
                      fill =species)) +
  geom_histogram(bins =15) +
  scale_color_brewer(palette = "Dark2")


ggplot(crickets, aes (x = rate,
                      fill = species)) +
  geom_histogram(bins =15,
                 show.legend = FALSE) +
  facet_wrap(~species) +
  scale_color_brewer(palette = "Dark2")


ggplot(crickets, aes (x = rate,
                      fill = species)) +
  geom_histogram(bins =15,
                 show.legend = FALSE) +
  facet_wrap(~species,
             ncol = 1) +
  scale_color_brewer(palette = "Dark2")
