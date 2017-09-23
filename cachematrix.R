## To compute inverse of a Matrix,copy from cache
## if already computed

## compute inverse of Matrix

makeCacheMatrix <- function(x = matrix()) {
Inv_matrix <- NULL
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
        get <- function() x
        setInv_matrix <- function(solve) Inv <<- Inv_matrix
        getInv_matrix <- function() Inv
        list(set = set, get = get,
             setInv = setInv_matrix,
             getInv = getInv_matrix)

}


## Check if inverse exist in Cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
Inv <- x$getInv_matrix()
        if(!is.null(Inv)) {
                message("getting cached data")
                return(Inv)
        }
        data <- x$get()
        Inv <- solve(x)
        x$setInv_matrix(Inv)
        Inv
}
