#' Install JavaScript libraries
#'
#' @details This must be done once per installation. You must have Node.js installed
#' on your computer.
#'
#' @param force Logical. Should the user be prompted to install?
#'
#' @importFrom yesno yesno
#'
#' @return \code{NULL}
#' @export
#'
#' @examples
#' \dontrun{install_js_dep()}
install_js_dep <- function(force = FALSE){
  if(!check_nodejs()){
    stop("You need to install Node.js on your computer.")
  }

  if (!force) {
    if (dir.exists(system.file("js", "node_modules",
                               package = "harvestacexchange"))) {
      ok <- yesno("JavaScript libraries are already installed on your ",
                  "local library, do you want to ovewrite them?")
    } else {
      ok <- yesno("This will install JavaScript libraries on your local ",
                  "library, are you ok with that?")
    }
  } else {
    ok <- TRUE
  }

  if(ok){
    dir_js <- system.file("js", package = "harvestacexchange")
    command <- paste0("npm install --prefix ", dir_js," playwright")
    system(command)
  }
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
