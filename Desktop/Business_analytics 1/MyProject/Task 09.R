# Load necessary packages
library(readr)

# Select relevant columns
AccFat_Info <- AccFat_Info %>%
  select(injSeverity, yearVeh)

# Check the structure of the selected data
str(AccFat_Info)

# Data Exploration
# Summary of injury severity
summary(AccFat_Info$injSeverity)

# Summary of year of vehicle model
summary(AccFat_Info$yearVeh)

# Chi-square Test for Independence
chisq_result <- chisq.test(AccFat_Info$injSeverity, AccFat_Info$yearVeh)

# Display the chi-square test results
print(chisq_result)


