## [Put comments here that describe what your functions do]
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }  #resets function in case if you want to add a new matrix
  get <- function() x #calls matrix x
  calc.invers <- solve(x)  #calculates invers of matrix 
  list(set = set, get = get,
       calc.invers = calc.invers)
 #assingse the value of solve(x) to m to store it
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$calc.invers
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    } #if the inverse has allredy been calculated, it fetches the outcome
  
  message("calculating")
  makeCacheMatrix(x) #if the inverse has not been calculated, caltulates it
  m #prints the outcome
  }
