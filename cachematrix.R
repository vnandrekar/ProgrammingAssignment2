## The functions below give you an example to cache the inverse of a matrix.

## The following function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function (y) {
      x <<- y
      m <<- NULL
    }
    get <-function() x
    setmatrix <- function(solve) m<<- solve
    getmatrix <- function() m
    list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## The following function returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("retrieving cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setmatrix(m)
  m
}

## solution
## a <- matrix(5:8,2,2)
## b <- makeCacheMatrix(a)
## cacheSolve(b)
