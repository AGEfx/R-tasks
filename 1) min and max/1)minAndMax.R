printMinAndMAx <- function(v){ #v - vector
  
  min <- Inf 
  max <- -Inf
  maxpos <- 1
  minpos <- 1 
  
  for (i in 1:length(v)) { 
    if(min >= v[i]){ 
      min <- v[i] 
      minpos <- i 
    }
    
    if(max <= v[i]){ 
      max <- v[i] 
      maxpos <- i 
    }
  }
  
  cat("min = " , min, ", position = ", minpos, "\n", sep = "")
  cat("max = " , max, ", position = ", maxpos, sep = "")
}

printMinAndMAx(c(1,2,5,100,10,15,-10,37)) 



