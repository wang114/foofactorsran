
#' user defined factor levels
#'
#'It turns input to a fator with factor levels order defined sepcifically
#'by user
#'
#' @param x a vector which is a potential factor
#' @param level Valid levels for x, default is "alp".
#' User defined level character must match the number of levels of x, and must include all values of x.
#' If equals "alp",levels of x appears alphabetically;
#' if equals "asit",levels of x are ordered as they appeared in x.
#'
#' @param ... optional arguments to pass to the function factor()
#'
#' @return x as a factor with level orders specified
#' @export
#'
#' @examples factor_level(iris$Species,level = c("versicolor","setosa","virginica"))
#'



factor_level <- function(x, level = "alp",...){
	if(class(x)!="factor"){ x <- as.factor(x)}
				 ifelse(level == "alp", levels(x) <- sort(levels(x)),
				 			 ifelse(level == "asit", x <- order_asit(x),
				 			 			 ifelse(length(level)!=nlevels(x)|length((x%in%level)[(x%in%level)==FALSE])>0,
				 			 			 stop("level is invalid"),
				 			 			 x <- factor(x,levels = level,...))))
	return(x)

}




