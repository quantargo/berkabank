library(berkabank)

load("D:/Bernardica/R/trans.rda")

data("client")
data("account")

trans_data <- load_client_transactions(client, account, trans)

pivot_trans <- create_txn_table(trans_data)

str(trans_data)

create_txn_table(trans_data)
# By Years and months
# top_txn_clients(trans_data)


