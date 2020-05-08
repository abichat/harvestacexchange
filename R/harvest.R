#' Harvest webpage
#'
#' @param page The targeted URL.
#' @param path_write Path to write to.
#'
#' @return \code{NULL}
#'
harvest_and_write <- function(page, path_write){

  dep <- dir.exists(system.file("js", "node_modules",
                                package = "harvestacexchange"))

  if(!dep){
    stop("You need to install JavaScript libraries with ",
         "harvestacexchange::install_js_dep() first.")
  }

  path_js <- system.file("js", "write_html.js", package = "harvestacexchange")
  command <- paste("node", path_js, page, path_write)
  system(command)
  invisible()
}
