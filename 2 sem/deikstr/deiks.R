minn <- function(metki,were){
  min <- Inf
  x <- 1
  if(is.null(were)){ #åñëè âåêòîğ ïóñòîé
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


"aa <- matrix(c(0, 7 ,9 ,0, 0,14,
              7, 0 ,10,15,0,0,
              9, 10,0, 11,0,2,
              0, 15,11,0, 6,0,
              0, 0 ,0, 6, 0,9,
              14,0 ,2, 0, 9,0), nrow = 6, ncol = 6, byrow = TRUE)"


"aa <- matrix(c(0,10,3,0,
              10,0,4,0,
              3,4,0,11,
              0,0,11,0), nrow = 4, ncol = 4, byrow = TRUE)"

a <- matrix(c(0, 5,10,13,0,0,
                0, 0, 8, 9, 13, 0,
                0,0,0, 5, 3, 6,
                0, 0, 0, 0, 8, 10,
                0,0,0,0,0, 9,
                0,0,0,0,0,0), nrow = 6, ncol = 6, byrow = TRUE) 

begin <- 1 #íà÷àëüíàÿ dthibyf
end <- 6 #çàäàòü êîíå÷íóş âåğøèíó

n <- sqrt(length(a))

metki <- c() #ìåòêè
were <- c() #âåğøèíû â êîòîğûõ óæå áûëè

metki[begin] <- 0
for(i in 1:n){
  if(i != begin){
    metki[i] <- Inf
  }
}

while(TRUE){
  current <- minn(metki,were) #òåêóùàÿ âåğøèíà
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

print("Êğàò÷àéøèå ğàññòîÿíèÿ äî âñåõ âåğøèí:")
print(metki)

print("Êğàò÷àéøåå ğàññòîÿíèå äî íåîáõîäèìîé âåğøèíû:")
print(metki[end])


print("Ïóòü:")
print(rev(path))

