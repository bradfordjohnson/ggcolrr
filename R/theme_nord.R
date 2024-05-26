#' A Nord theme for ggplot2
#'
#' This function creates a ggplot2 theme
#'
#' @param ... Additional arguments passed to `ggplot2::theme`.
#' @param base_size Numeric. The base size for text elements. Default is 12.
#'
#' @return A `ggplot2::theme` object with customized text sizes and colors.
#' @import ggplot2
#' @import showtext
#' @export theme_nord
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#'   geom_point() +
#'   theme_nord(light = TRUE, base_size = 14, font = "Open Sans")
theme_nord <- function(..., light = TRUE, base_size = 12, font = "Open Sans") {

  if (light) {
    background_color <- "#ECEFF4"
    title_color <- "#2E3440"
    text_color <- "#2E3440"
  } else {
    background_color <- "#4C566A"
    title_color <- "#ECEFF4"
    text_color <- "#ECEFF4"
  }

  title_size <- base_size * 1.5

  showtext::showtext_auto()

  font_add_google(name = font, family = font)

  ggplot2::theme(

    plot.margin = ggplot2::margin(10, 10, 10, 10),
    plot.background = ggplot2::element_rect(fill = background_color, color = background_color),
    plot.title = ggplot2::element_text(size = title_size, color = title_color, family = font),
    plot.subtitle = ggplot2::element_text(size = base_size, color = text_color, family = font),
    plot.caption = ggplot2::element_text(size = base_size, color = text_color, family = font),

    panel.background = ggplot2::element_rect(fill = background_color, color = background_color),
    panel.grid = ggplot2::element_line(color = text_color),

    strip.background = ggplot2::element_rect(fill = background_color, color = background_color),
    strip.text = ggplot2::element_text(size = base_size, color = text_color, family = font),

    axis.title = ggplot2::element_text(size = base_size, color = text_color, family = font),
    axis.text = ggplot2::element_text(size = base_size, color = text_color, family = font),
    axis.ticks = ggplot2::element_line(color = text_color),

    legend.background = ggplot2::element_rect(fill = background_color, color = background_color),
    legend.title = ggplot2::element_text(size = base_size, color = text_color, family = font),
    legend.text = ggplot2::element_text(size = base_size, color = text_color, family = font),

    complete = FALSE,
    validate = TRUE,
    ...
  )
}
