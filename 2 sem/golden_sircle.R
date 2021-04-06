PHI = (1 + sqrt(5)) / 2
    
f <- function(x){
        return((x+1)^3 + 5*x^2)
    }
    
findMin <- function(a, b, e){
    x1 <- 0
    x2 <- 0   
    while (TRUE){
       x1 = b - (b - a) / PHI
       x2 = a + (b - a) / PHI
       if (f(x1) >= f(x2))
          a = x1
       else
          b = x2
       if (abs(b - a) < e)
                break;
        }
        return (a + b) / 2
    }
    
   
   
a <- -2
b <- 2
e <- 0.001
print(findMin(a,b,e))
