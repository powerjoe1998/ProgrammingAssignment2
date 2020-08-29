## Put comments here that give an overall description of what your
## functions do
##we are using two functions below to find and report the value of a cached matrix and its inverse
## Write a short comment describing this function
### the makeCacheMatrix function should create a matrix object capable of caching its inverse

makeCacheMatrix <- function(x = matrix()) { ## definiing function argument
m <- NULL ##initialize the inverse m as NULL to hold value of the matrix inverse
set <- function(y){ ## define the set function to assign a new val
x <<- y ## stating the value of the matrix in the parent env
m <<-NULL ##will reset m to NULL when there's a new matrix
}
get <- function()x ##defining the get function to return the matrix arg's value
setInverse <-function(inverse) m <<- inverse ##assigning the inverse value in parent env
getInverse <- function()m ##getting the val of inverse where it's called 
list(set = set, get = get)
setInverse = setInverse, getInverse = getInverse
##necessary to refer to the functions with the $
}


## Write a short comment describing this function
## here we will find the inverse of the special matrix as returned by the previous function--if the inverse has been found and the matrix wasn't changed, 
##this function will retrieve the inverse from the cacha

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m < x$getInverse() ##first we find the matrix inverse
        if(!is.null(m)){ ## this scenario addresses what to do if the inverse was no different than the original matrix 
        	message("getting cached data")
        	return(m). ##then m is returned
        }
        mat <- x$get() ###if not then the inverse is found and cached
        x$setInverse(m)
        m
}
