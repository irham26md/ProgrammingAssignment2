## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3))) {
        ivr <- NULL
  set <- function(y) {
    x <<- y
    ivr <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) ivr <<- Inverse
  getInverse <- function() ivr
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ivr <- x$getInverse()
  if(!is.null(ivr)) {
    message("getting inversed matrix")
    return(ivr)
  }
  data <- x$get()
  ivr <- solve(data, ...)
  x$setInverse(s)
  ivr
}
