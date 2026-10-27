#' Create random DNA string with a specific length
#'
#' @param DNA_length Length of the DNA
#'
#' @returns Returns a string of DNA nucleotides
#' @export
#'
#' @examples DNA_create(4) returns "AGGT"
DNA_create <- function(DNA_length){
  DNA_vector <- sample(c("A", "T", "G", "C"), size = DNA_length, replace = TRUE)
  DNA_string <- paste0(DNA_vector, collapse = "")
  return(DNA_string)
}
