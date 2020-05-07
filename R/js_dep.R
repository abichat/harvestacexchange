#' Install JavaScript libraries and scripts
#'
#' @details This must be done once per project. You must have Node.js installed
#' on your computer.
#'
#' @param dir_js The directory where all JS dependencies will be installed.
#' Default to \code{.js}.
#'
#' @return \code{NULL}
#' @export
#'
#' @examples
#' \dontrun{install_js_dep()}
install_js_dep <- function(dir_js = ".js"){
  path_nm <- file.path(dir_js, "node_modules")
  dir.create(path_nm, recursive = TRUE)
  cli <- paste0("npm install --prefix ", dir_js," playwright")
  system(cli)
  file.copy(system.file("js", "write_html.js",package = "harvestacexchange"),
            dir_js)
  invisible()
}
