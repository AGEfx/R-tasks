bubbleSort <- function(arr){
  len = length(arr) 
  for (i in 1:(len - 1)) {
    for (j in 1:(len - 1)) {
      if (arr[j] > arr[j + 1]){
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      }
    }
  }
  return(arr)
}
print(bubbleSort(c(3,-4,3,100,-100,-8,55,9,10,134))) # output: -100   -8   -4    3    3    9   10   55  100  134

