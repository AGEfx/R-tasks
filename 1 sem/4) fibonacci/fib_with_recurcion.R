#The code outputs number by the number n

n <- 5
fib <- function(n){
      if(n <= 2) 
          return(1)
      else 
          return(fib(n-1) +  fib(n-2))    
}
fib(n)
    
