
## Put comments here that give an overall description of what your functions do

        ## This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

        ## makeCacheMatrix gets a matrix as an input, then it sets the value, set the inverse Matrix and get the inverse Matrix. 
        
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(invers) inv <<- invers
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function
        ## What cacheSolve does is computing the inverse of makeCacheMatrix. The cacheSolve will get the inverse from the cache if it has already been calculated

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}