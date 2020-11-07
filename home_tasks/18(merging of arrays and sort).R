a <- c(-133,-34,1,3,4,6,9)
b <- c(0,1,2,3,5,7,33)
c <- c()
N <- length(a)
M <- length(b)
for(i in 1:(N)){
    c[i] <- a[i]
}
j <- 1
for(i in (N+1):(N + M)){
    c[i] <- b[j]
    j <- j + 1
}
  
bubble_sort <- function(vector){
  
  for (i in 1:(N+M - 1)) {
    for (j in 1:(N+M - 1)) {
      if (vector[j] > vector[j + 1]){
        temp <- vector[j]
        vector[j] <- vector[j + 1]
        vector[j + 1] <- temp
      }
    }
  }
  return(vector)
}
print(bubble_sort(c))
