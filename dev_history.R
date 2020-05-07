library(devtools)

# use_build_ignore("dev_history.R")
# use_gpl3_license("Antoine Bichat")

# use_git()

# use_r("html_to_tibble")
# use_r("clean")

# dir.create("inst/js", recursive = TRUE)

# use_r("harvest")

# use_data_raw("urls")
# use_r("urls")

# use_r("wrappers")

# use_readme_rmd()

# use_github()

# use_logo("man/figures/hex.png")

# use_r("messages")
# use_data_raw("templates")

# use_r("filter")

# use_r("js_dep")

use_pipe()

load_all()
document()
attachment::att_to_description()
use_tidy_description()

check()

spell_check()


