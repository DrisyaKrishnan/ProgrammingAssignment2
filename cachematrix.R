## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix includes set,get,setinv,getinv
##library(MASS) is used to calculate inverse of both squared and non squared matrices
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL                       #initializing inverse as NULL
  set<-function(y){
                  x<<-y
                  inv<<-NULL
                  }
 get<-function()x                 #the function to get matrix x
 setinv<-function(inverse)inv<<-inverse 
 getinv<-function(){
                  inver<-ginv(x)
                  inver%*%x                 #function to get inverse of matrix
                  } 
 list(set = set, get = get,
      setinv = setinv,
      getinv = getinv)
 
