#' A Nord theme for ggplot2
#'
#' This function creates a ggplot2 theme
#'
#' @param ... Additional arguments passed to `ggplot2::theme`.
#' @param base_size Numeric. The base size for text elements. Default is 12.
#' @param light Logical. If `TRUE`, the theme will be light. If `FALSE`, the theme will be dark. Default is `TRUE`.
#' @param font Character. The font to use for text elements, uses sysfonts::font_add_google(). Default is "Roboto".
#'
#' @return A `ggplot2::theme` object with customized text sizes and colors.
#' @import ggplot2
#' @import jsonlite
#' @import curl
#' @import sysfonts
#' @import showtext
#' @export theme_nord
#'
#' @examples
#' library(ggplot2)
#' library(showtext)
#' showtext_auto()
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#'   geom_point() +
#'   theme_nord(light = TRUE, base_size = 14, font = "Roboto")


theme_nord <- function(..., light = TRUE, base_size = 12, font = "Roboto") {

  if (light) {
    background_color <- "#ECEFF4"
    grid_color <- "#3B4252"
    title_color <- "#2E3440"
    text_color <- "#2E3440"
  } else {
    background_color <- "#4C566A"
    grid_color <- "#D8DEE9"
    title_color <- "#ECEFF4"
    text_color <- "#ECEFF4"
  }

  title_size <- base_size * 1.5

  showtext::showtext_auto()

  sysfonts::font_add_google(name = font, family = font)

  ggplot2::theme(

    plot.margin = ggplot2::margin(5, 5, 5, 5, "mm"),
    plot.background = ggplot2::element_rect(fill = background_color, color = background_color),
    plot.title = ggplot2::element_text(size = title_size, color = title_color, family = font, margin = ggplot2::margin(0,0,3,0,"mm")),
    plot.subtitle = ggplot2::element_text(size = base_size, color = text_color, family = font, margin = ggplot2::margin(2,0,7,0,"mm")),
    plot.caption = ggplot2::element_text(size = base_size, color = text_color, family = font),

    panel.background = ggplot2::element_rect(fill = background_color, color = background_color),
    panel.grid.major = ggplot2::element_line(color = grid_color, linewidth = .1),
    panel.grid.minor = ggplot2::element_blank(),

    strip.background = ggplot2::element_rect(fill = background_color, color = background_color),
    strip.text = ggplot2::element_text(size = base_size, color = text_color, family = font),

    axis.title = ggplot2::element_text(size = base_size, color = text_color, family = font),
    axis.title.x = ggplot2::element_text(margin = ggplot2::margin(5,0,0,0,"mm")),
    axis.title.y = ggplot2::element_text(margin = ggplot2::margin(0,5,0,0,"mm")),
    axis.text = ggplot2::element_text(size = base_size, color = text_color, family = font),
    axis.ticks = ggplot2::element_blank(),

    legend.background = ggplot2::element_rect(fill = background_color, color = background_color),
    legend.title = ggplot2::element_text(size = base_size, color = text_color, family = font, margin = ggplot2::margin(0,3,0,0,"mm")),
    legend.text = ggplot2::element_text(size = base_size, color = text_color, family = font),
    legend.key = ggplot2::element_rect(fill = background_color, color = background_color),
    legend.box.background = ggplot2::element_rect(fill = background_color, color = background_color),

    complete = FALSE,
    validate = TRUE,
    ...
  )
}
