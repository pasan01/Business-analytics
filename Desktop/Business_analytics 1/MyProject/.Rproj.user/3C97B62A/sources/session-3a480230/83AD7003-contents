# Load the required libraries
library(dplyr)

# Select relevant columns
df <- AccFat_Info %>% select(ageOFocc, injSeverity)

# Check and handle missing values
df <- df[complete.cases(df),]

# Perform a Pearson correlation test
correlation_result <- cor.test(df$ageOFocc, df$injSeverity, method = "pearson")

# Set your significance level
alpha <- 0.05

# Interpretation
cat("Pearson Correlation Test Result:\n")
print(correlation_result)

if (correlation_result$p.value < alpha) {
  cat("\nReject the null hypothesis: There is a statistically significant relationship between age and injury severity.\n")
} else {
  cat("\nFail to reject the null hypothesis: No statistically significant relationship found.\n")
  



