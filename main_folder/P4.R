library(faithful)

with(faithful,
     plot(eruption, waiting,
          xlab = " Eruptions time(min)",
          ylab = "Waiting time to next eruption (min)"))
     
     
     
fit <- with(faithful, lm(waiting ~ eruptions))
fit


fit <- lm(waiting ~ eruptions, data = faithful)