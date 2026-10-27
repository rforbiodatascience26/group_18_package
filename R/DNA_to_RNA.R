#' DNA to RNA transformation
#'
#' @param DNA String of DNA
#'
#' @returns String of RNA
#' @export
#'
#' @examples
#' DNA <- "ATTAGCA"
#' DNA_to_RNA(DNA)
DNA_to_RNA <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
