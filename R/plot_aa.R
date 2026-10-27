#' Plot of amino acids in peptide string
#'
#' @param peptide_str A string of a peptide
#'
#' @returns A plot of amino acids in peptide string
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples boop
plot_aa <- function(peptide_str){
  # Stores all unique amino acids in 1D vector
  unique_aa <- peptide_str |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  # Counts the amino acids and stores it in a dataframe
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = peptide_str, pattern =  amino_acid)) |>
    as.data.frame()
  # Wrangling
  colnames(counts) <- c("Counts")
  counts[["peptide_str"]] <- rownames(counts)
  # Make plot
  make_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = peptide_str, y = Counts, fill = peptide_str)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(make_plot)
}
