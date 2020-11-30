vector <- c(-1,3,6,2,0,-13,-3,3,64)
new_vector <- c()

min <- 0
min_pos <- 0

for (i in 1:length(vector)){
  min <- vector[1]
  min_pos <- 1
  for (j in 1:length(vector)){
    if(vector[j] < min){ 
      min <- vector[j] 
      min_pos <- j
    }
  }  
  new_vector[i] <- min 
  vector <- vector[-min_pos] #удаление элемента с индексом min_pos из вектора
  
}

new_vector

#output: -13  -3  -1   0   2   3   3   6  64
