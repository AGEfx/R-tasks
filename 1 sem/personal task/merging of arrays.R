a <- c(-3,2,5,7,9,10)
b <- c(-100,-34,2,15,34,56,78)


merge_arrays <- function(a, b){
  res <- c()
  
  k <- 1
  while(length(b) > 0 && length(a) > 0){
    if(a[1] > b[1]){
      res[k] <- b[1]
      b <- b[-1]
      
      
    } 
    else if(a[1] == b[1]){
      res[k] <- a[1]
      k <- k + 1
      res[k] <- b[1]
      
      b <- b[-1]
      a <- a[-1]
    }
    
    else if (a[1] < b[1]){
      res[k] <- a[1]
      a <- a[-1]
    }
    
    k <- k + 1
    
    
  }
  
  if(length(b) == 0){
    for(i in 1:length(a)){
      res[k] <- a[i]
      k <- k + 1
    }
  }
  else{
    for(i in 1:length(b)){
      res[k] <- b[i]
      k <- k + 1
    }
  }
  return(res)
}

print(merge_arrays(a,b))