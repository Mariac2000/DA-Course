num_simulations <- 10000
num_simulations <- 10000
apple_income_range <- c(30000, 60000)
apple_costs_range <- c(15000, 30000)
apple_income <- runif(n = num_simulations, min = apple_income_range[1], max = apple_income_range[2])
apple_income
apple_costs <- runif(n = num_simulations, min = apple_costs_range[1], max = apple_costs_range[2])
summary(apple_costs)
summary(apple_income)
apple_profits <- apple_income - apple_costs
summary(apple_profits)
hist(apple_profits)
abline(v=quantile(apple_profits,
                  c(0.1,0.5,0.9),
                  lwd=10
                  ))
sheep_income <- runif(n= num_simulations, min = 2000, max = 5000)
sheep_costs <- runif(n= num_simulations, min = 1000, max= 3000)
sheep_results <- sheep_income - sheep_costs
summary(sheep_results)
sheep_profts <- sheep_income - sheep_costs
total_profits <- apple_profits + sheep_profts
summary(total_profits)
hist(apple_profits)
hist(apple_profits,
     xlab = "Profits in €",     # X-axis label
     ylab = "Frequency",       # Y-axis label
     main = "Total Results")
hist(sheep_profts, add = TRUE)
total_results <- apple_profits + sheep_profts
hist(total_results, add = TRUE, col = "violet")


