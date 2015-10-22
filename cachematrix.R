## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores a matrix object X in memory
## Write a short comment describing this function
## makeCacheMatrix uses scoping rules and stores matrices in memory
## makeCacheMatrix creates a "matrix" object that can cache it's inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(Y) {
    X<<- Y
    inverse <<- NULL
  }
  get <- function() X
  setinverse <- function(Inverse) inverse <<- Inverse
  getinverse <- function() inverse
  list(set=set, get = get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
## cacheSolve computes the inverse of the special "matrix" object that can cache it's inverse.
## cacheSolve shows the inverse of a matrix if it's in memory. If not, computes the inverse and then shows the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- X$getinverse()
  if(!is.null(inverse)) {
    message("matrix inverse is in memory")
    return(inverse)
  }
  data <- X$get()
  inverse <- solve(data, ...)
  X$setinverse(inverse)
  inverse
}
