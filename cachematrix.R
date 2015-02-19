## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        cache <- NULL
               
        setMatrix <- function(newValue) {
                x <<- newValue
        
                cache <<- NULL
        }
 
        getMatrix <- function() {
                x
        }

        cacheInverse <- function(solve) {
                cache <<- solve
        }

       
        getInverse <- function() {
                cache
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
       
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$getMatrix()
        inverse <- solve(data)
        x$cacheInverse(inverse)
        
        
        inverse
        
}
