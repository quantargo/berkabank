library(berkabank)
library(dplyr)
library(lubridate)
library(tidyverse)

trans_data <- load_client_transactions()


create_txn_table(trans_data)

# By Years and months
top_txn_clients(trans_data)

