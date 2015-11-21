context("factor level ordered as appeared in the data")

test_that("factor level order",{
	x <- c("small","large","median","large","small")
	y <- c("small","large","median")
	z <- c(1,4,5,4)
	X <- as.factor(x)
	expect_identical(levels(order_asit(x)),y)
	expect_identical(levels(order_asit(X)),y)
	expect_warning(order_asit(z))
})



test_that("input with many unique values",{
	x <- c("a","b","c","d","e","f","g","h","aa","bb","cc")
	expect_warning(order_asit(x))
})


test_that("differ from as.factor",{
	x <- c("small","large","median","large","small")
	x1 <- paste0(levels(as.factor(x)),collapse = "")
	x2 <- paste0(levels(order_asit(x)),collapse = "")
	expect_false(x1==x2)
})
