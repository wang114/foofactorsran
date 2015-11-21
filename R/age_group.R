helper.age_group <- function(x){
	if(x > 120 || x < 0) stop("imput must be an age")
	agegroup <- "NA"
	if (0 <= x&x <= 14){agegroup = "Children"}
	else if (14 < x&x <= 24){agegroup = "Youth"}
	else if (24 < x&x <= 65){agegroup = "Adult"}
	else{agegroup = "Senior"}
	return (agegroup)
}



#' Classify age groups
#'
#'
#' classify the age group of the input age
#'
#' @param x a vector of ages
#' @param droplevel if equals TRUE, unused levels of x will be dropped.
#'
#' @return factor with levels of "Children","Youth","Adult","Senior".
#' @export
#'
#' @examples age_group(c(2,70,45,22,27))
age_group <- function(x,droplevel = TRUE){

	x <- factor(sapply(x,helper.age_group), levels = c("Children","Youth","Adult","Senior"))
	if(is.logical(droplevel) == FALSE){stop("droplevel can only be TRUE or FALSE")}
	else if (droplevel == TRUE|droplevel == T) {x <- droplevels(x)}
	else {x <- x}
	return(x)
}



