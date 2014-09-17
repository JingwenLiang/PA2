<<<<<<< HEAD
## Date: Sep. 15th, 2014
=======
## Date: Sep. 16th, 2014
>>>>>>> a7fd3e1b7214ab39695dd0ee50f1bab0b9224255
## File name: cachematrix.R
## cache the inverse of a matrix.

## Function name: makeMatrix
## Parameters: x, it should be a invertable squared matrix
## creates a special "matrix" object that can cache its inverse
## set/get the matrix x; set/get the invertable matrix of x
makeMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated (and the 
##matrix has not changed), then the cachesolve should retrieve the inverse from 
##the cache.

cacheSolve <- function(x, ...) {
    m <- x$getslove()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
        ## Return a matrix that is the inverse of 'x'
}

