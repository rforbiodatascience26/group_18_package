test_that("DNA_create returns string", {
  expect_equal(is.character(DNA_create(4)), TRUE)
})

test_that("DNA_create has the correct length", {
  expect_equal(nchar(DNA_create(4)),4)
  expect_equal(nchar(DNA_create(23)),23)
  expect_equal(nchar(DNA_create(2)),2)
})

test_that("0 length returns empty string", {
  expect_equal(DNA_create(0),"")
})
