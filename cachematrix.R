##makeCasheMatrix makes a matrix 'object' that can cashe its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- fuction() {x}
  setInverse <- fuction(inverse) {inv <<- inverse} ##set the value of the mean
  getInverse <- function() {inv} ##get the value of the mean
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function includes an if statement that allows R to either calculate the matrix inverse, or pull the existing solution from the cashe. 

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cashed data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv     
}
