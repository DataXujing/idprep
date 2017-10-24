# Infix function Generalized Division fill 1

`%d%` <- function(X,Y){
  value <- round(X/Y,6)
  value[which(is.na(value))] <-1
  value[which(is.nan(value))] <-1
  value[which(is.infinite(value))] <-1
  
  value
}

#`%d%` <- div(X,Y)