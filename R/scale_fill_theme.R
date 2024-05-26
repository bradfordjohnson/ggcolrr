#' Title theme scale fill
#'
#' This function allows you to set manual fill scales for ggplot2 plots.
#'
#' @param theme Character. The theme to use. Default is "nord_aurora".
#' @param theme_key List. A list of color values for the theme. Default is a list of Nord colors.
#'
#' @return 'scale_fill_manual' with the specified theme.
#'
#' @import ggplot2
#' @export scale_fill_theme
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +
#'  geom_bar( ) +
#'  scale_fill_theme(theme = "nord_aurora")


scale_fill_theme <- function(theme = "nord_aurora", theme_key = list(
  nord_polar_night = c("#2E3440", "#3B4252", "#434C5E", "#4C566A"),
  nord_snow_storm = c("#D8DEE9", "#E5E9F0", "#ECEFF4"),
  nord_frost = c("#8FBCBB", "#88C0D0", "#81A1C1", "#5E81AC"),
  nord_aurora = c("#BF616A", "#D08770", "#EBCB8B", "#A3BE8C", "#B48EAD")
)) {
  scale_fill_manual(values = theme_key[[theme]])
}
