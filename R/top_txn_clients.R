#' Load client data merged with transactions
#' @export
top_txn_clients <- function(x) {
    z <-x%>%
    mutate(date = ymd(date), year = year(date), month = month(date)) %>%
    mutate(amount = as.numeric(amount)) %>%
    group_by(year, month, client_id) %>%
    summarise(amount_total = sum(amount))

  a <- order(z$amount_total, decreasing=T)
  df <- z[a, ]
 head(df, n=10)
  }

# x <-trans_data
#
#   z <-x%>%
#   mutate(date = ymd(date), year = year(date), month = month(date)) %>%
#   mutate(amount = as.numeric(amount)) %>%
#   group_by(year, month, client_id) %>%
#   summarise(amount_total = sum(amount))
#
#   as.data.frame(z)
#   a <- z%>% order(z [ , "amount_total"], decreasing=T)
