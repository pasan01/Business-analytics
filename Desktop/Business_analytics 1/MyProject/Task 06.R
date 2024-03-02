# Load the data set
data <- read.csv('AccFat_Info.csv')

# Separate data into two groups: with and without airbag deployment
with_airbag <- data[data$deploy == 1, "injSeverity"]
without_airbag <- data[data$deploy == 0, "injSeverity"]

# Perform a two-sample t-test
t_test_result <- t.test(with_airbag, without_airbag)

# Print the results of the t-test
cat("Results of Two-Sample T-Test:\n")
cat("Test Statistic:", t_test_result$statistic, "\n")
cat("P-Value:", t_test_result$p.value, "\n")

# Determine the significance level (e.g., 0.05)
alpha <- 0.05

# Perform hypothesis testing
if (t_test_result$p.value < alpha) {
  cat("Conclusion: Reject the null hypothesis.\n")
  cat("Airbags significantly reduce injuries during accidents.\n")
} else {
  cat("Conclusion: Fail to reject the null hypothesis.\n")
  cat("There is no significant evidence that airbags reduce injuries.\n")
}

# Create a box plot for visualization
library(ggplot2)

ggplot(data, aes(x = factor(deploy), y = injSeverity)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Injury Severity  Airbag Deployment", x = "Airbag Deployment", y = "Injury Severity")


