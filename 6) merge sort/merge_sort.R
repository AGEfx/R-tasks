a <- c(1,4,4,7,9,0,4,1,6,3,-4,3,-34,1,1,1)



merge_sort <- function(vector){
  
  if(length(vector) <= 1){
    return(vector)
  }else{
    middle <- length(vector) %/% 2
    left <- merge_sort(vector[1:middle])
    right <- merge_sort(vector[(middle+1):length(vector)])
  }
  
  res <- c()
  
  k <- 1
  while(length(right) > 0 && length(left) > 0){
    if(left[1] >= right[1]){
      res[k] <- right[1]
      right <- right[-1]
      
      
    } 
    # Добавил "=" в оставшиеся if условия"
    
    #else if(left[1] == right[1]){
    #  res[k] <- left[1]
     # k <- k + 1
#res[k] <- right[1]
      
     # right <- right[-1]
     # left <- left[-1]
   # }
    
    else if (left[1] <= right[1]){
      res[k] <- left[1]
      left <- left[-1]
    }
    
    k <- k + 1
    
    
  }
  
  if(length(right) == 0){
    for(i in 1:length(left)){
      res[k] <- left[i]
      k <- k + 1
    }
  }
  else{
    for(i in 1:length(right)){
      res[k] <- right[i]
      k <- k + 1
    }
  }
  return(res)
}

print(merge_sort(a))