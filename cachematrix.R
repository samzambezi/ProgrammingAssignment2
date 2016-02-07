## Put comments here that give an overall description of what your
## functions do

## Creates the matrix with caching functionality

makeCacheMatrix <- function(x = matrix()) {
## creates a matrix
inv <- NULL
set <- function(y){ ## set the value for the matrix
  x <<- y
inv <<- NULL}

get <- function () x  ## get the value of the matrix
setinverse <- function(inverse) inv <<- inverse  ## set the inverse of the matrix 
getinverse <- function() inv  ## get the value of the inverse
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if(!isnull(inv)){
  message("getting cached data.")
  return(inv)
}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
