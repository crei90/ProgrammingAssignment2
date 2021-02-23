## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        #create an object to store the matrix argument 
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        #create an object to store the inverse matrix 
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # get inverse matrix if it is already calculated from the cache
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)  # computes inverse
        x$setinv(inv)
        inv
}
