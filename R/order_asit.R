#' Set levels of a factor to the order appeared in data
#'
#' @param x a vector
#'
#' @return x as a factor
#' @export
#'
#' @examples order_asit(c("small","large","median","large","small"))
order_asit <- function(x){
	if(class(x) != "character"&class(x)!="factor"){
		warning("The input is not character or a factor")
	}
	if(length(x)/length(unique(x))<1.1){
		warning("input has many unique values")
	}
	x <- factor(x,
							levels = c(as.character(unique(x)),
												 levels(x)[which(!(levels(x)) %in% (unique(x)))]))
	x
}
