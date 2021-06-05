library(igraph)
f <- function(){

a <- matrix(c(0, 1 ,1 ,1, 0, 0, 1, 0, 0,
              1, 0 ,1, 1, 0, 1, 1, 0, 0,
              1, 1 ,0, 1, 0, 0, 0, 0, 0,
              1, 1 ,1, 0, 1, 1, 0, 0, 0,
              0, 0 ,0, 1, 0, 0, 1, 1, 0,
              0, 1 ,0, 1, 0, 0, 0, 1, 1,
              1, 1 ,0, 0, 1, 0, 0, 0, 0,
              0, 0 ,0, 0, 1, 1, 0, 0, 1,
              0, 0 ,0, 0, 0, 1, 0, 1, 0), nrow = 9, ncol = 9, byrow = TRUE)

plot(graph.adjacency(a, mode="undirected"))
'Инициализация'
start <- 1 #начальная вершина
end <- 8 #конечная вершина

metki <- c(rep(-1,ncol(a))) #вектор с метками для вершин 


old_front <- c(start)
new_front <- c() #список вершин куда будет распространятся волна на след. шаге
neighbors <- c() #спсиок вершин-соседей
t = 1 #длина волны

metki <- replace(metki,start, 0)

while(TRUE) {
  for (i in old_front) {
    #пробегаемся по старому фронту и ищем соседей у вершин из старого фронта
    for (j in 1:ncol(a)) {
      if (a[i,j] == 1 && !(j %in% neighbors)) {
        neighbors <- append(neighbors, j) #записываем соседнюю вершину в спсиок
      }
      
    }
  }  
  for(x in neighbors){ #пробегаемся по соседям
    if(metki[x] == -1){ #и если мы еще не были в вершине, то
      metki <- replace(metki, x, t) #даём ей метку, равную длине волны
      new_front <- append(new_front, x) #записываем в новый фронт
    }
  }
  if(metki[end] != -1){
    cat("Метки:", metki,"\n")
    cat("Расстояние:",t,"\n")

    
    path <- c(end)
    t <- t - 1
    current <- end
    while(TRUE){
      if(t == 0){
        path <- append(path, start)
        break
      }
      for(i in 1:ncol(a)){
        if(a[current, i] == 1 && metki[i] == t){ #ищем смежную с текущей вершину,расстояние до которой на 1 меньше, чем до текущей
          current <- i
          path <- append(path, current)
          t <- t - 1
          break
        }
      }
    }
    
    cat("Путь: ", (rev(path)))
    break
  }
  if(is.null(new_front)){
    print(metki)
    print("Пути нет")
    break
  }
  old_front <- new_front
  new_front <- c()
  neighbors <- c()
  t <- t + 1
}
}


f()
