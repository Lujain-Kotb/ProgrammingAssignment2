## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function returns a list of operations to be associated with the input argument (x).

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y) {
        x <<- y
        inverse <<- null
}
get <- function() x
setInverse <- function(inv) inverse <<- inv
getInverse <- function() inverse

list(set = set , get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function returns the inverse of a matrix directly if it's cached, else it calculates and sets the inverse for later retrieval.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if (!is.null(inverse)) {
             print("getting cached result")
                return (inverse)
        }
        data <- x$get()
        inv <- solve(data,...)
        x$setInverse(inv)
        inv
}
