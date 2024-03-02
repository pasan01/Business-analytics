# Hypothetical observed frequencies for each year
observed_data_1997 <- matrix(c(
  c(100, 110, 90, 80, 70, 60, 50)
), nrow = 1, byrow = TRUE)

observed_data_1998 <- matrix(c(
  c(120, 130, 95, 85, 75, 65, 55)
), nrow = 1, byrow = TRUE)

observed_data_1999 <- matrix(c(
  c(105, 125, 88, 78, 68, 58, 48)
), nrow = 1, byrow = TRUE)

observed_data_2000 <- matrix(c(
  c(95, 115, 87, 77, 67, 57, 47)
), nrow = 1, byrow = TRUE)

observed_data_2001 <- matrix(c(
  c(120, 140, 100, 90, 80, 70, 60)
), nrow = 1, byrow = TRUE)

observed_data_2002 <- matrix(c(
  c(115, 135, 98, 88, 78, 68, 58)
), nrow = 1, byrow = TRUE)

# Perform the chi-squared tests for each year
chi_square_result_1997 <- chisq.test(observed_data_1997)
chi_square_result_1998 <- chisq.test(observed_data_1998)
chi_square_result_1999 <- chisq.test(observed_data_1999)
chi_square_result_2000 <- chisq.test(observed_data_2000)
chi_square_result_2001 <- chisq.test(observed_data_2001)
chi_square_result_2002 <- chisq.test(observed_data_2002)

# Print the chi-squared test results for each year
print("1997")
print(chi_square_result_1997)
print("1998")
print(chi_square_result_1998)
print("1999")
print(chi_square_result_1999)
print("2000")
print(chi_square_result_2000)
print("2001")
print(chi_square_result_2001)
print("2002")
print(chi_square_result_2002)

