## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL;
    set <- function(y) {
      x <<- y;
      m <<- NULL;
      return(x);
    }
    get <- function() {x};
    setInverse <- function(y) { m <<- y; };
    getInverse <- function() { m };
    list(set = set, 
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getInverse();
        if(!is.null(i)) {
          message("getting cached inverse");
          return(i);
        }
        mtrx <- x$get();
        i <- solve(mtrx);
        x$setInverse(i);
        return(i);
}
