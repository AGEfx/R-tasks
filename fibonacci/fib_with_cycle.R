#The code outputs first 20 fibonacci numbers

n <- 20

previous <- -1
current <- 1

fib <- function(n){
    for(i in 1:n){
       sum <- current + previous
       
       previous <- current
       current <- sum
       print(sum)
    }
}
fib(n)

