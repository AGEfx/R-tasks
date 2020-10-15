printMinAndMAx <- function(arr){
  
  min = Inf 
  max = -Inf
  maxpos = 1
  minpos = 1 
  
  for (i in 1:length(arr)) { 
    if(min >= arr[i]){ 
      min = arr[i] 
      minpos = i 
    }
    
    if(max <= arr[i]){ 
      max = arr[i] 
      maxpos = i 
    }
  }
  
  cat("min = " , min, ", position = ", minpos, "\n", sep = "")
  cat("max = " , max, ", position = ", maxpos, sep = "")
}

printMinAndMAx(c(1,2,5,100,10,15,-10,37)) 



