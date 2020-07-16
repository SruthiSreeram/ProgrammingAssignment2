## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## the makecachematrix function is used to get and set the values of the inverse of the matrix 
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
## getinv and setinv are used to get and set the inverse
}


## Write a short comment describing this function

## the cachesolve function is used to compute the inverse of the matrix. if the inverse has
## already been calculated, then it is acquired from the cache. otherwise it is newly calculated 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
