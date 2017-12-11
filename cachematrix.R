## Put comments here that give an overall description of what your
## functions do


makeCacheMatrix <- function(x = matrix()) {

}
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Above function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated and not changed, 
## then it would retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

## test functions

source("ProgrammingAssignment2/cachematrix.R")
 my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
 my_matrix$get()
 
 my_matrix$getInverse()
 NULL
 cacheSolve(my_matrix)
 
 my_matrix$getInverse()
 
 my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))
 
 my_matrix$get()
 
 y_matrix$getInverse()
 NULL
 cacheSolve(my_matrix)
 
 cacheSolve(my_matrix)
 
 my_matrix$getInverse()
 
 