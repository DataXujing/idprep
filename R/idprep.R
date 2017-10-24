
library(stringr)

# ages

ages <- function(x){
  if(nchar(x) ==18)
    age <- 2017-as.numeric(str_sub(x,7,10))
  else
    age <- NA
  age
}



#genders M,U:1,F:0

genders <- function(x){
  if(nchar(x) == 18){
    if (as.numeric(str_sub(x,17,17))%%2 == 0)
      gender <- 1
    else
      gender <- 0
  }
  else
    gender <-1

  gender

}

# vvply  if is na fill mean

vvply <- function(X,FUN,...){
  FUN <- match.fun(FUN)

  vec <- as.vector(sapply(X,FUN,...))
  vec[which(is.nan(vec))] <- NA
  vec[which(vec<0 | vec>100)] <- NA

  vec[which(is.na(vec))] <- mean(vec,na.rm=TRUE)

  vec
}


# Province

Province <- function(X){

  code <- c('11','12','13','14','15','21','22','23','31','32','33','34',
            '35','36','37','41','42','43','44','45','46','50','51','52',
            '53','54','61','62','63','64','65')

  breaks <- c(-Inf,11.5,12.5,13.5,14.5,15.5,21.5,22.5,23.5,31.5,32.5,33.5,34.5,
              35.5,36.5,37.5,41.5,42.5,43.5,44.5,45.5,46.5,50.5,51.5,52.5,
              53.5,54.5,61.5,62.5,63.5,64.5,65.5,Inf)

  y <- str_sub(X,1,2)
  y[which(is.na(y))] <- 66
  y[which(y>67 | y < 11)] <- 66
  y[which(!(y %in% code))] <- 66

  y <- as.numeric(y)
  z <- cut(y,breaks=breaks,label=F)

  z
}





# Infix function Generalized Division fill 1

'%//%' <- function(X,Y){
  value <- round(X/Y,6)
  value[which(is.na(value))] <-1
  value[which(is.nan(value))] <-1
  value[which(is.infinite(value))] <-1

  value
}





