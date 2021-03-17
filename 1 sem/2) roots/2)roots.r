search_roots <- function(a, b, c){ 
  D <- b*b - 4*a*c
  
  if (D > 0){
    x1 <- (-b - sqrt(D)) / (2*a)
    x2 <- (-b + sqrt(D)) / (2*a)
    return(c(x1, x2)) 
  }
  else if (D == 0){
    x <- (-b / (2*a))
    return(x) 
  }
  else 
    return ("There are no roots")
  
}
print(search_roots (1, 2, 1)) #output: -1
print(search_roots (1, 5, 4)) #output: -4 -1
print(search_roots (1, 2, 3)) #output: "There are no roots"
