#' Load client data merged with transactions
#' @export
create_txn_table <- function(x) {
     x %>%
    mutate(date = ymd(date), year = year(date), month = month(date)) %>%
    mutate(amount = as.numeric(amount)) %>%
    group_by(year, month) %>%
    summarise(amount_total = sum(amount)) %>%
    pivot_wider(names_from = month, values_from = amount_total)
}
