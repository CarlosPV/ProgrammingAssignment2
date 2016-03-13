## Put comments here that give an overall description of what your
## functions do
## These functions are written in order to complete week 3 assignment for the 
## R Programming Course in Coursera. Github user: Carlos PV

## Write a short comment describing this function

## This function  creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## This function returns the inverse of the cache matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
                message("getting cache data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        
}
