#' Basic filter functions
#'
#' @param df Formatted data frame.
#' @param price_min Minimum price.
#'
#' @return A filtered dataframe.
#' @export
#'
#' @importFrom dplyr filter
#' @importFrom rlang .data
#'
#' @examples
#' \dontrun{
#' turnips %>%
#'   filter_price_min(price_min = 400) %>%
#'   filter_grade_min(grade_min = 90, keep_new = TRUE) %>%
#'   filter_line() %>%
#' df_events %>%
#'   filter_words(words = c("gold", "celeste")) %>%
#'   filter_no_tag()
#' }
#'
filter_price_min <- function(df, price_min = 500){
  filter(df, .data$price >= price_min)
}

#' @rdname filter_price_min
#'
#' @param grade_min Minimum grade.
#' @param keep_new Logical. Should host without grade should be kept?
#'
#' @export
#'
filter_grade_min <- function(df, grade_min = 75, keep_new = TRUE){
  if(keep_new){
    return(filter(df, .data$grade >= grade_min | is.na(.data$grade)))
  } else {
    return(filter(df, .data$grade >= grade_min))
  }
}

#' @rdname filter_price_min
#'
#' @export
#'
filter_line <- function(df){
  filter(df, .data$line == "Join Line")
}

#' @rdname filter_price_min
#'
#' @export
#'
filter_no_tag <- function(df){
  filter(df, .data$tags == "No tag")
}

#' @rdname filter_price_min
#'
#' @param words Words to find in notice column.
#'
#' @export
#'
#' @importFrom dplyr mutate select
#' @importFrom stringr str_c str_detect str_to_lower
#'
filter_words <- function(df, words){
  words <- str_to_lower(words)
  words <- str_c(words, collapse = "|")
  df %>%
    mutate(n_lower = str_to_lower(.data$notice)) %>%
    filter(str_detect(.data$n_lower, words)) %>%
    select(-.data$n_lower)
}


#' Filter a dataframe based on another one
#'
#' @inheritParams filter_price_min
#' @param df_old A dataframe of the same type to be compared to.
#'
#' @return A filtered dataframe.
#' @export
#'
filter_old_turnips <- function(df, df_old = NULL){
  filter(df, ! .data$price %in% df_old$price)
}

#' @rdname filter_old_turnips
#'
#' @export
filter_old_events <- function(df, df_old = NULL){
  filter(df, ! .data$notice %in% df_old$notice)
}
