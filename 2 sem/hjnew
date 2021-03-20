e1 <- c(1,0)
e2 <- c(0,1)

h <- 0.1

e <- 0.000001


d <- 10

f <- function(p){
    return((p[1]-3)^2 + (p[2]+1)^2)
}

q <- function(p){
    op <- p
    np <- p
    r <- c(1,1)
    while(h > e){
        while(r != c(0,0)){
            p <- op + h*e1
            if(f(p) < f(np)){
                np <- p
            }
            p <- op - h*e1
            if(f(p) < f(np)){
                np <- p
            }
            
            p <- op + h*e2
            if(f(p) < f(np)){
                np <- p
            }
            
            p <- op - h*e2
            if(f(p) < f(np)){
                np <- p
            }
            
            r <- np - op
            op <- np
        }
        
        h <- h / d
    }
    return(np)
}

p <- c(0,0)
np <- (q(p))

print(np)
print(f(np))

