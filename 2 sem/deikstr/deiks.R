minn <- function(metki,were){
  min <- Inf
  x <- 1
  if(is.null(were)){ #если вектор пустой
    were[1] <- -1
  }
  for(i in 1:length(metki)){
    if(metki[i] < min && all(i!=were)){
      min <- metki[i]
      x <- i
    }
  }
  return(x)
}


a <- matrix(c(0, 7 ,9 ,0, 0,14,
              7, 0 ,10,15,0,0,
              9, 10,0, 11,0,2,
              0, 15,11,0, 6,0,
              0, 0 ,0, 6, 0,9,
              14,0 ,2, 0, 9,0), nrow = 6, ncol = 6, byrow = TRUE)



begin <- 1 #начальная вершина
end <- 6 #задать конечную вершину

n <- sqrt(length(a))

metki <- c() #метки
were <- c() #вершины в которых уже были

metki[begin] <- 0
for(i in 1:n){
  if(i != begin){
    metki[i] <- Inf
  }
}

while(TRUE){
  current <- minn(metki,were) #текущая вершина
  for (i in 1:n) {
    if (a[current, i] != 0) {
      rasst <- metki[current] + a[current, i]
      if (rasst < metki[i]) {
        metki[i] <- rasst
      }
    }
  
  }
  were <- append(were,current)
  if(current == end){
    break
  }
}

path <- c()
while(TRUE){
  current <- end
  for (i in n:1) {
    if(a[i,current] != 0){
      rasst <- metki[current] - a[i, current]
      if(metki[i] == rasst){
        path <- append(path,current)
        current <- i
      }
    }
  }
  if(current == begin){
    path <- append(path, current)
    break
  }
}

format_vertex <- paste("Вершина -", seq(1,n),"\n", "Путь =", metki)


graph <- graph.adjacency(a, mode="undirected", weighted=TRUE)

plot(ig, edge.label=round(E(ig)$weight),vertex.label = format_vertex)

print("Кратчайшие расстояния до всех вершин:")
print(metki)

print("Кратчайшее расстояние до необходимой вершины:")
print(metki[end])


print("Путь:")
print(rev(path))

