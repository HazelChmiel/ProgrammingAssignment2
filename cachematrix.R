## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is used to create a special "matrix" that can store a matrix and cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
j <- NULL #initializing j as NULL
set <- function(y){
  x <<- y
  j <<- NULL
}
get <- function()x #function to get matrix x
setInverse <- function(inverse) j <<- inverse     
getInverse <- function() j #function to obtain inverse of the matrix
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function is used to get the inverse of a special "matrix".
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
j <- x$getInverse()
if(!is.null(j)){ #checking whether j is NULL
  message("getting cached data")
  return(j)
}
mat <- x$get()
j <- solve(mat, ...) #calculates j value
x$setInverse(j)
j ## Return a matrix that is the inverse of 'x'
}
