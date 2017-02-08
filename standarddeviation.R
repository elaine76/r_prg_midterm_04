#create a function: my.ssd()
my_ssd <- function(input_vec) {
  x_bar <- mean(input_vec)
  n_minus_one <- length(input_vec) - 1
  summation <- 0
  for(x_i in input_vec) {
    summation <- summation +(x_i - x_bar)^2
    ssd_input <- ((1/n_minus_one)*summation)^0.5
  }
  return(ssd_input)
}

#create an input
set.seed(87)
my_vector <- round(runif(10) * 100)


#Function call
my_ssd(my_vector)

