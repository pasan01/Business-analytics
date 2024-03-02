# Calculate central tendency measures
mean_age <- mean(AccFat_Info$ageOFocc)
median_age <- median(AccFat_Info$ageOFocc)
mode_age <- as.numeric(names(sort(table(AccFat_Info$ageOFocc), decreasing = TRUE)[1]))

mean_year <- mean(AccFat_Info$yearacc)
median_year <- median(AccFat_Info$yearacc)
mode_year <- as.numeric(names(sort(table(AccFat_Info$yearacc), decreasing = TRUE)[1]))

mean_injury <- mean(AccFat_Info$injSeverity)
median_injury <- median(AccFat_Info$injSeverity)
mode_injury <- as.numeric(names(sort(table(AccFat_Info$injSeverity), decreasing = TRUE)[1]))

# Calculate standard deviation
sd_age <- sd(AccFat_Info$ageOFocc)
sd_year <- sd(AccFat_Info$yearacc)
sd_injury <- sd(AccFat_Info$injSeverity)

# Plot bell curves
par(mfrow=c(1, 3), mar=c(5, 4, 4, 2) + 0.1)

# Age of Occupant
hist(AccFat_Info$ageOFocc, main = "Age of Occupant", xlab = "Age", ylab = "Frequency", prob = TRUE)
curve(dnorm(x, mean_age, sd_age), col = "blue", lwd = 2, add = TRUE)

# Year of Accident
hist(AccFat_Info$yearacc, main = "Year of Accident", xlab = "Year", ylab = "Frequency", prob = TRUE)
curve(dnorm(x, mean_year, sd_year), col = "green", lwd = 2, add = TRUE)

# Injury Severity
hist(AccFat_Info$injSeverity, main = "Injury Severity", xlab = "Severity Level", ylab = "Frequency", prob = TRUE)
curve(dnorm(x, mean_injury, sd_injury), col = "red", lwd = 2, add = TRUE)



