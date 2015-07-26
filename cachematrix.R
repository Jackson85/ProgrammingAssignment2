## This is to Caching the Inverse of the matrix.
## This function is used to create an object that stores the matrix and caches its inverse
## This function is to create a matrix that use to cache its inverse.
## makeCacheMatrix assigned the function to computes the inverse of the special "matrix"
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the inverse
## 4. Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
## inv use to store the cached inverse matrix
  inv <- NULL
## set the matrix
  set <- function(y) {  
    x <<- y
    inv <<- NULL
  }
## get the matrix
  get <- function() x
## set the inverse
  set_Inverse <- function(inverse) inv <<- inverse
## get the inverse
  get_Inverse <- function() inv
##  return the matrix to the defined function
  list(set = set,get = get,set_Inverse = set_Inverse,get_Inverse = get_Inverse)
}


## cacheSolve is to compute the inverse of the matrix
## if the inverse already calculated, then it will return the cached inverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$get_Inverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
## The inverse is have not calculated yet, assign the calculation
  Data <- x$get()
  inv <- solve(Data, ...)
## cache the inverse
  x$set_Inverse(inv)
## return 
  inv
  
}
