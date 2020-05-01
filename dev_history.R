library(devtools)

# use_build_ignore("dev_history.R")
# use_gpl3_license("Antoine Bichat")

# use_git()

# use_r("html_to_tibble")
# use_r("helpers")

# dir.create("inst/extdata", recursive = TRUE)

# use_r("scrape")

# use_data_raw("urls")
# use_r("urls")

# use_r("wrappers")

# use_readme_rmd()

load_all()
document()
attachment::att_to_description()

check()
