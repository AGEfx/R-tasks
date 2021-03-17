n <- 10




fib <- function(n){
  sum <- 0
  previous <- -1
  current <- 1
  for(i in 1:n){
    sum <- current + previous
    previous <- current
    current <- sum
  }
  return(sum)
}
print(fib(n)) #output: 34
