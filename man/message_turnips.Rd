% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/messages.R
\name{message_turnips}
\alias{message_turnips}
\alias{message_events}
\title{Send a message with a Telegram bot}
\usage{
message_turnips(df, bot, chat_id)

message_events(df, bot, chat_id)
}
\arguments{
\item{df}{Formatted data frame.}

\item{bot}{Telegram bot.}

\item{chat_id}{Chat id.}
}
\description{
Send a message with a Telegram bot
}
\seealso{
\code{\link[telegram.bot:Bot]{Bot}} function in {telegram.bot}
package to create a Telegram bot.
}
