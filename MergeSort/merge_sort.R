merge_sort <- function(up, down, left, right){
  if (left == right)
  {
    down[left] <- up[left]
    return(down)
  }
  
  middle <- (left + right) %/% 2;
  

  l_buff<-merge_sort(up, down, left, middle)
  r_buff<-merge_sort(up, down, middle + 1, right)
  

  target <- c()
  
  if(!is.na((all(l_buff == up))) && all(l_buff == up)){
    target <- down
  } else {
    target <- up
  }
   
  
  l_cur <- left
  r_cur <- middle + 1
  for (i in left:right){
    if (l_cur <= middle && r_cur <= right)
    {
      if (l_buff[l_cur] < r_buff[r_cur])
      {
        target[i] <- l_buff[l_cur]
        l_cur <- l_cur + 1
      }
      else
      {
        target[i] <- r_buff[r_cur]
        r_cur<- r_cur + 1
      }
    }
    else if (l_cur <= middle)
    {
      target[i] <- l_buff[l_cur]
      l_cur <- l_cur + 1
    }
    else
    {
      target[i] <- r_buff[r_cur]
      r_cur <- r_cur + 1
    }
  }
  return(target)
}

v <- c(3,2,1,0,-1,-2)
vv <- c()

merge_sort(v,vv,1,length(v))
