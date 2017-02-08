#create a function: my.sort()
my.sort <- function(input_vec, decreasing = FALSE) {
  length_input_vec <- length(input_vec)
  for (i in 1:(length_input_vec - 1)) {
    for (j in (i + 1):length_input_vec) {
      if (decreasing == FALSE && input_vec[i] > input_vec[j]) {
        temp_i <- input_vec[i]
        input_vec[i] <- input_vec[j]
        input_vec[j] <- temp_i
      }
      if (decreasing == TRUE && input_vec[i] < input_vec[j]) {
        temp_j <- input_vec[j]
        input_vec[j] <- input_vec[i]
        input_vec[i] <- temp_j
      }
    }
  }
  return(input_vec)
}


#create input
set.seed(87)
my_seq <- round(runif(10) * 100)

#Function call
my.sort(my_seq,decreasing = FALSE)
my.sort(my_seq,decreasing = TRUE)