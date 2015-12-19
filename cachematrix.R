## These are two functions that create a matrix object and chaches the inverse,
## then the second function will compute the inverse or retreive the cached inverse
## of the first matrix


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y){
                x<<-y
                inver<<-NULL
        }
        get <- function()x
        setinverse <- function(inverse) inver<<- inverse
        getinverse <- function() inver
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## This function computes the inverse of the special "matrix".
## If this has already been calculated it will retrieve the cached data.

cacheSolve <- function(x, ...) {
        inver <- x$getinverse()
        if(!is.null(inver)){
                message("getting cached data.")
                inver
                }
        jk<- x$get()
        inver<- solve(jk)
        inver
}

