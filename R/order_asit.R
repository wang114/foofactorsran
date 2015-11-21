#' Set levels of a factor to the order appeared in data
#'
#'
#' @param x a vector or a factor
#'
#' @return a factor with levels in the order appeared in x.
#' If x is originally a factor with unused levels, these unused levels
#' will be the last levels in the order.
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
