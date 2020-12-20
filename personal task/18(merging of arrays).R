a <- c(-4,-3,-2,-1, 4, 132, 445)
b <- c(-123,-54,-23,-3,-2, 4, 5, 12, 35, 345)

merge <- function(a, b) {
  c <- c()
  i = 1
  j = 1
  k = 1
  
  while (i<=length(a) & j<=length(b)) {
    if (a[i] > b[j]) {
      c[k] <- b[j]
      j = j + 1
    } else{
      c[k] <- a[i]
      i = i + 1
    }
    k = k + 1
  }
  
  if (i > length(a)) {
    for (n in j:length(b)) {
      c[k] <- b[n]
      k = k + 1
    }
  }
  if (j > length(b)) {
    for (n in (i):length(a)) {
      c[k] <- a[n]
      k = k + 1
    }
  }

  return(c)
}
print(merge(a,b))
