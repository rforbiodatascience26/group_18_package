test_that("translate_codons translates codons into an amino acid sequence", {
  expect_equal(
    translate_codons(c("ATG", "CCA", "TTT")),
    paste0(aa_prop[c("ATG", "CCA", "TTT")], collapse = "")
  )
})
