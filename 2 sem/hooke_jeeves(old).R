

#заданная функция
F <- function(x) {
  return((x[1] - 2) ^ 2 + (x[2] - 9)^2 + x[1]*x[2])
}

basicPoint <- c(-8, -9) #начальная точка
basicF <-  F(basicPoint) #значение функции в начальной точке
h <- 1 #шаг
e <- 0.01 #эпсилон

print(HookeJeeves(h,e))


HookeJeeves <- function(h,e) {
  while (h > e) {
    newPoint <- findNewPoint(basicPoint)
    if (F(newPoint) == basicF) {
      cat("h = ", h)
      print("")
      h <- h / 2
    }
    h == 0.00001
  }
  return(F(newPoint))
}

findNewPoint <- function(x) {
  n <- length(x)
  newPoint <- basicPoint
  for (i in 1:n) {
    
    e <- createUnitVector(n, i)
    point <- x + h * e
    cat("e = ", e, " Точка:", point, ", Значение:", F(point))
    print("")
    if (checkF(point, basicPoint) ) {
      newPoint <- point
      return(newPoint)
    } else{
      point <- x - h * e
      cat("e = ", e, " Точка:", point, ", Значение:", F(point))
      print("")
      if (checkF(point, basicPoint) == TRUE) {
        newPoint <- point
        return(newPoint)
      }
    }
  }
  return(newPoint)
}



checkF <- function(firstPoint, secondPoint) {
  fF <- F(firstPoint)
  sF <- F(secondPoint)
  return(fF < sF)
}

createUnitVector <- function(n, i) {
  #созздаем единичный вектор длины n, с единицей на месте i
  v <- rep(0, n)
  v[i] <- 1
  return(v)
}
