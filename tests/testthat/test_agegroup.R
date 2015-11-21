context("correct age groups")

test_that("age_group take valid age only",{
	x <- c(-1,20)
	y <- c("hello",20)
	expect_error(age_group(x))
	expect_error(age_group(y))
})

test_that("droplevel is logical argument",{
	 x <- c(23,10)
	 l <- c("Children", "Youth", "Adult", "Senior")
	 l1 <- c("Children","Youth")
	 expect_identical(levels(age_group(x,droplevel = T)),l1)
	 expect_identical(levels(age_group(x,droplevel = FALSE)),l)
	 expect_identical(levels(age_group(x,droplevel = F)),l)
	 expect_error(levels(age_group(x,droplevel = "a")))
})

test_that("age_group returns correct age groups",{
	x <- c(2,70,45,22,27)
	y <- factor(c("Children","Senior","Adult","Youth","Adult"),
								 levels = c("Children","Youth","Adult","Senior"))
	expect_identical(age_group(x),y)

})

test_that("droplevel works properly",{
	x <- c(1,34,67,9)
	l <- c("Children", "Youth", "Adult", "Senior")
	l1 <- c("Children", "Adult", "Senior")
	expect_identical(levels(age_group(x,droplevel = FALSE)),l)
	expect_identical(levels(age_group(x)),l1)
})

