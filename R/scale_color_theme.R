#' Title theme scale color
#'
#' This function allows you to set manual color scales for ggplot2 plots.
#'
#' @param theme Character. The theme to use. Default is "nord_aurora".
#' @param theme_key List. A list of color values for the theme. Default is a list of Nord colors.
#'
#' @return 'scale_color_manual' with the specified theme.
#'
#' @import ggplot2
#' @export scale_color_theme
#'
#' @examples
#' library(ggplot2)
#' mtcars$cyl <- as.factor(mtcars$cyl)
#' ggplot(data = mtcars, aes(x = hp, y = mpg, color = cyl, group = cyl)) +
#'  geom_line() +
#'  scale_color_theme(theme = "nord_aurora")


scale_color_theme <- function(theme = "nord_aurora", theme_key = list(
  nord_polar_night = c("#2E3440", "#3B4252", "#434C5E", "#4C566A"),
  nord_snow_storm = c("#D8DEE9", "#E5E9F0", "#ECEFF4"),
  nord_frost = c("#8FBCBB", "#88C0D0", "#81A1C1", "#5E81AC"),
  nord_aurora = c("#BF616A", "#D08770", "#EBCB8B", "#A3BE8C", "#B48EAD"),
  discord = c("#5865F2", "#57F287", "#FEE75C", "#EB459E", "#ED4245")
)) {
  scale_color_manual(values = theme_key[[theme]])
}
