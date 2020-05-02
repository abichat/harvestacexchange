#' Send a message with a Telegram bot
#'
#' @param df Formatted ata frame.
#' @param bot Telegram bot.
#' @param chat_id Chat id.
#'
#' @return NULL
#' @export
#'
#' @importFrom glue glue_data
#' @importFrom magrittr %>%
#' @importFrom methods is
#' @importFrom purrr walk
#' @importFrom rlang .data
#' @importFrom stringr str_trim
#'
#' @seealso \code{\link[telegram.bot:Bot]{Bot}} function in {telegram.bot}
#' package to create a Telegram bot.
#'
message_turnips <- function(df, bot, chat_id){
  stopifnot(is(bot, c("Bot", "TelegramObject", "R6")))

  df %>%
    glue_data(template_turnips) %>%
    str_trim() %>%
    walk(bot$sendMessage, chat_id = chat_id, parse_mode = "Markdown")
}

#' @rdname message_turnips
#' @export
message_events <- function(df, bot, chat_id){
  stopifnot(is(bot, c("Bot", "TelegramObject", "R6")))

  df %>%
    glue_data(template_events) %>%
    str_trim() %>%
    walk(bot$sendMessage, chat_id = chat_id, parse_mode = "Markdown")
}
