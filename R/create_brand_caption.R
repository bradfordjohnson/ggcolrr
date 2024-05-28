#' Title create brand caption
#'
#' This function allows you to create a brand caption for ggplot2 plots, using Font Awesome 6 Brands Regular.
#'
#' @param brand_icon The Fonts Awesome Brand icon code to use. Default is "f09b" (GitHub Icon).
#' @param caption_text The text to use in the caption.
#' @param caption_text_font The font to use for the caption text. Default is "sans".
#'
#' @return A ggplot2::labs caption with the specified brand icon and caption text.
#' @import ggplot2
#' @import ggtext
#' @import showtext
#' @import sysfonts
#' @export create_brand_caption
#'
#' @examples
#' library(ggplot2)
#' library(showtext)
#' library(ggtext)
#' library(sysfonts)
#' ggplot() +
#' create_brand_caption(caption_text = "ggcolrr") +
#' theme(plot.caption = ggtext::element_textbox_simple(margin = margin(3,0,0,0,"mm"), size = 15))


create_brand_caption <- function(brand_icon = "f09b", caption_text, caption_text_font = "sans") {

  font_path <- system.file("extdata", "Font-Awesome-6-Brands-Regular-400.otf", package = "ggcolrr")
  if (font_path == "") {
    stop("Font file not found. Please check the installation of the 'yourpackage'.")
  }

  sysfonts::font_add(family = "font_awesome_brands", regular = font_path)

  showtext::showtext_auto()

  if (caption_text_font != "sans") {
    sysfonts::font_add_google(name = caption_text_font, family = caption_text_font)
  }

  caption <- paste0(
    "<span style='font-family:font_awesome_brands;'>&#x",brand_icon, ";</span>",
    "<span>&emsp;</span>",
    "<span style='font-family:", caption_text_font,";'>", caption_text, "</span>"
  )

  ggplot2::labs(caption = caption)
}
