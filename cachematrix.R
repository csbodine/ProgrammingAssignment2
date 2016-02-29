## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL;
    set <- function(y) {
      x <<- y
      tryCatch(m <<- solve(y), 
               warning = function(w) {warning(paste("Matrix is not invertible"))},
               error = function(e) {warning(paste("Matrix is not invertible"))}
               );
    }
    get <- function() {x}
    getInverse <- function() {m}
    list(set = set, get = get, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
