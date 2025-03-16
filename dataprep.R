
set.seed(12)
frog_weights <- round(rnorm(30, mean = 7.1),1)

# The weights of 30 frogs
frog_weights <- c(5.6, 8.7, 6.1, 6.2, 5.1, 6.8, 6.8, 6.5, 7.0, 7.5, 6.3, 5.8, 6.3, 7.1, 6.9, 6.4, 8.3, 7.4, 7.6, 6.8, 7.3, 9.1, 8.1, 6.8, 6.1, 6.8, 6.9, 7.2, 7.2, 7.5)

# One sample t-test
t.test(frog_weights, mu = 6.5)


library(tidyverse)

set.seed(21)
data <- tibble(dist_from_road = rep(seq(0, 100, by = 5), each=10), 
               coverage = round(c(runif(60, 0.2, 0.3), 
                            runif(50, 0.2, 0.6),
                            runif(100, 0.5, 0.8))*100,1))


print(data, n = 210)

ggplot(data, aes(x = dist_from_road, y = coverage)) +
  geom_point() +
  xlim(0, 25) +
  ylim(0, 30) +
  geom_smooth(method = "lm", col="darkgreen") +
  labs(x = "Distance from road (m)", y = "Coverage (%)",
       title = "Vegetation coverage near to roading project similar to surrounding area") +
  theme_minimal()

