#' Harvest webpage
#'
#' @param page The targeted URL.
#' @param path_write Path to write to.
#' @inheritParams turnips
#'
#' @return \code{NULL}
#'
harvest_and_write <- function(page, path_write, dir_js = ".js"){
  path_js <- file.path(dir_js, "write_html.js")
  command <- paste("node", path_js, page, path_write)
  system(command)
  invisible()
}
