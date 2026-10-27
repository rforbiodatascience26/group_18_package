#' Translate codons into an amino acid sequence
#'
#' @param codons A character vector of codons to translate.
#'
#' @returns A character string containing the corresponding amino acid sequence.
#' @export
#'
#' @examples
#' translate_codons(c("ATG", "CCA", "TTT"))
translate_codons <- function(codons) {
  amino_acid_sequence <- paste0(aa_prop[codons], collapse = "")
  return(amino_acid_sequence)
}
