#' A light theme for ggplot2
#'
#' This function creates a ggplot2 theme
#'
#' @param ... Additional arguments passed to `ggplot2::theme`.
#' @param base_size Numeric. The base size for text elements. Default is 12.
#'
#' @return A `ggplot2::theme` object with customized text sizes and colors.
#' @import ggplot2
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#'   geom_point() +
#'   main_light(base_size = 14)
main_light <- function(..., base_size = 12) {
  title_size <- base_size * 1.5
  ggplot2::theme(
    axis.text = ggplot2::element_text(size = base_size, color = "red"),
    axis.title = ggplot2::element_text(size = base_size, color = "green"),
    plot.title = ggplot2::element_text(size = title_size, color = "blue"),
    complete = FALSE,
    validate = TRUE,
    ...
  )
}
