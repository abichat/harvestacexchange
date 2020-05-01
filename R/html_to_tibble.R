#' Convert HTML files to tibbles
#'
#' @param path_to_html An html file.
#'
#' @return A tibble
#' @export
#'
#' @importFrom dplyr across mutate
#' @importFrom magrittr extract set_names %>%
#' @importFrom purrr map transpose
#' @importFrom rlang .data
#' @importFrom rvest html_node html_nodes html_text
#' @importFrom stringr str_remove str_trim
#' @importFrom tibble as_tibble
#' @importFrom tidyr separate
#' @importFrom xml2 read_html
#'
turnips_html_to_tibble <- function(path_to_html){
  path_to_html %>%
    read_html() %>%
    html_node(".queue-list") %>%
    html_nodes(".align-items-stretch") %>%
    unclass()  %>%
    map(~ html_nodes(., ".d-flex")) %>%
    map(html_text) %>%
    extract(-1) %>%
    map(add_elements, desired_length = 6, element = "No tag") %>%
    map(as.list) %>%
    transpose() %>%
    map(unlist) %>%
    set_names(c("price", "waiters", "time", "voting", "line", "tags")) %>%
    as_tibble() %>%
    separate(.data$voting, into = c("grade", "voters"), extra = "drop") %>%
    mutate(across(c(.data$price, .data$waiters, .data$grade, .data$voters), as.numeric),
           tags = str_remove(.data$tags, "Tags"),
           tags = str_trim(.data$tags))
}