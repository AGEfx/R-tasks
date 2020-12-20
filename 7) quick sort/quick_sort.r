quickSort <- function(arr) {
  mid_pos <- length(arr)%/%2
  mid <- arr[mid_pos]
  arr <- arr[-mid_pos]
  
  left <- c()
  right <- c()
  
  k <- 1
  j <- 1
  for(i in 1:length(arr)){
 
    if(arr[i] <= mid){
      left[k] <- arr[i]
      k <- k + 1
    } else {
      right[j] <- arr[i]
      j <- j + 1
    }
  } 
  if (length(left) > 1) {
    left <- quickSort(left)
  }
  if (length(right) > 1) {
    right <- quickSort(right)
  }
  
  return(c(left, mid, right))
}

print(quickSort(c(15,-1234,34,54,-4,5,5,5,5,5,5,5,2,7,4,2,5,1,0,-4,2)))
