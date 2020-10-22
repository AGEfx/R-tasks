print_min_and_max <- function(vector){ 
  
  min <- Inf 
  max <- -Inf
  maxpos <- 1
  minpos <- 1 
  
  for (i in 1:length(vector)) { 
    if(min >= vector[i]){ 
      min <- vector[i] 
      minpos <- i 
    }
    
    if(max <= vector[i]){ 
      max <- vector[i] 
      maxpos <- i 
    }
  }
  
  cat("min = " , min, ", position = ", minpos, "\n", sep = "")
  cat("max = " , max, ", position = ", maxpos, sep = "")
}

print_min_and_max(c(1,2,5,100,10,15,-10,37)) 



