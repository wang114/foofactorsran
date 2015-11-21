context("reset user defined factor level orders")

test_that("factor level order",{
	l <- c("versicolor","setosa","virginica")
	x <- iris$Species
	y1 <- c("versicolor","setosa","virginica")
	y2 <- c("setosa","versicolor","virginica")

	expect_identical(levels(factor_level(x,l)),y1)
	expect_identical(levels(factor_level(x,"asit")),y2)
	expect_identical(levels(factor_level(x)),y2)
})


test_that("user defined factor levels is valid",{
	x <- iris$Species
	expect_error(factor_level(x,level = c("setosa","virginica")))
	expect_error(factor_level(x,level = c("blue","red","green")))
	expect_error(factor_level(x,level = c("virginica","setosa")))
})
