bubble_sort <- function(vector){
  len <- length(vector) 
  for (i in 1:(len - 1)) {
    for (j in 1:(len - 1)) {
      if (vector[j] > vector[j + 1]){
        temp <- vector[j]
        vector[j] <- vector[j + 1]
        vector[j + 1] <- temp
      }
    }
  }
  return(vector)
}
print(bubble_sort(c(3,-4,3,100,-100,-8,55,9,10,134))) # output: -100   -8   -4    3    3    9   10   55  100  134

