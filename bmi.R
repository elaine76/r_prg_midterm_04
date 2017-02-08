# create a function: my_bmi_calculator()
my_bmi_calculator <- function(w, h) {
  h <- h / 100
  bmi <- w / h^2
  return(bmi)
}

# create input
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

# function call
BMI_data <- mapply(FUN = my_bmi_calculator, w = weights, h = heights)

#  use cbind
BMI_data <- cbind(heights_and_weights, BMI_data)
View(BMI_data)