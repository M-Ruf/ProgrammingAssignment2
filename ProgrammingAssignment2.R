# R Programming - Assignment 2 

# Assignment: Caching the Inverse of a Matrix

## The purpose of these functions is to cache the inverse of a matrix
## by assigning values to an object and storing them in a different
## environment from the current environment. 

## The first function makeCasheMatrix creates a new matrix containing some
## function that will be able to cache it inverse
##     

makeCacheMatrix <- function() {
        matrix <- NULL
        set <- function(x) {                 
                matrix <<- x                 
                inverse <<- NULL             
        }
        get <- function() {                 
                matrix
        }
        setInverse <- function(inv) {        
                inverse <<- inv
        }
        getInverse <- function() {           
                inverse
        }
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}        


## This function will compute the inverse of the matrix create above. If the 
## inverse has already been calculated (and the matrix has not changed)
## then the cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(matrix) {
        inverse <- matrix$getInverse()
        if (!is.null(inverse)) {
                message("Retrieving inverse from cache")
                return(inverse)
        }
        
        data <- matrix$get()
        inverse <- solve(data)
        
        matrix$setInverse(inverse)
        inverse
}








