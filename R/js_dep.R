#' Install JavaScript libraries and scripts
#'
#' @details This must be done once per installation. You must have Node.js installed
#' on your computer.
#'
#'
#' @return \code{NULL}
#' @export
#'
#' @examples
#' \dontrun{install_js_dep()}
install_js_dep <- function(){
  if(!check_nodejs()){
    stop("You need to install Node.js on your computer.")
  }
  dir_js <- system.file("js", package = "harvestacexchange")
  command <- paste0("npm install --prefix ", dir_js," playwright")
  system(command)
  invisible()
}

#' Check if Node.js is installed
#'
#' @return Logical
#'
#'
#' @examples
#' harvestacexchange:::check_nodejs()
check_nodejs <- function(){
  x <- suppressWarnings(system("node -v >/dev/null 2>&1"))
  x == 0
}
