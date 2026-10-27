#' Split a nucleic acid sequence into codons
#'
#' @param sequence A nucleic acid sequence as a character string.
#' @param start The starting position for splitting the sequence into codons. Defaults to 1.
#'
#' @returns A character vector containing the codons.
#' @export
#'
#' @examples
#' codon("ATGCCATTT")
#' codon("ATGCCATTT", start = 2)
codon <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
