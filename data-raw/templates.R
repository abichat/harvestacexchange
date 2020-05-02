## code to prepare `messages` dataset goes here

message_wait <- "{waiters} people in the queue (approximately {time})."

message_grade <- "Host is rated {grade}% with {voters} voter{ifelse(voters > 1, 's', '')}."

message_tags <- "{ifelse(tags == 'No tag', '', paste0('TAGS: ', tags, '.'))}"

template_turnips <- paste("Turnip price: *{price}*",
                         message_wait, message_grade, message_tags,
                         sep = "\n")

template_events <- paste("Event: *{event}*", "_{notice}_",
                         message_wait, message_grade, message_tags,
                         sep = "\n")

usethis::use_data(template_turnips, template_events,
                  overwrite = TRUE, internal = TRUE)
