## trying to create the functions as correct as possible !
## changed variable names inorder to force myself to understand diferent pieces of code and how they interact with each other.  x has been replaced by my_matx and the inverse matrix is represented by my_matx_inv 

## initialising function

makeCacheMatrix <- function(my_matx = matrix()) {

	my_matx_inv <- NULL

	set <- function(y) {

		my_matx <<- y
		my_matx_inv <<- NULL

	}

	get <- function() my_matx
	
	get_inv <- function() my_matx_inv

	set_inv  <- function(unk) my_matx_inv <<- unk

	list(set=set, get=get, set_inv=set_inv, get_inv=get_inv)

}


## inversing function

cacheSolve <- function(my_matx,...) {

	my_matx_inv <- my_matx$get_inv()

	if(! is.null(my_matx_inv)) {

		message("getting cached data!")
		return(my_matx_inv)

	}

	data <- my_matx$get()

	my_matx_inv <- solve(data,...)

	my_matx$set_inv(my_matx_inv)

	return (my_matx_inv)

}
