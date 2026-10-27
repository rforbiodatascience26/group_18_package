
test_that("codon splits a sequence into groups of three", {
  expect_equal(codon("ATGCCATTT"), c("ATG", "CCA", "TTT"))
})

test_that("codon uses the specified starting position", {
  expect_equal(codon("ATGCCATTT", start = 2), c("TGC", "CAT"))
})

test_that("codon works with a sequence containing one codon", {
  expect_equal(codon("ATG"), "ATG")
})
