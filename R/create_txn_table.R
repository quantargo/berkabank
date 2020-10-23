#' pivot table - transaction amounts by year and month
#' @export
create_txn_table <- function(x) {
  x %>%
    mutate(date = ymd(date.x), year = year(date), month = month(date)) %>%
    select(year,month,amount) %>%
    mutate(amount = as.numeric(amount)) %>%
    group_by(year, month) %>%
    summarise(amount_total = sum(amount)) %>%
    pivot_wider(names_from = month, values_from = amount_total)
}
