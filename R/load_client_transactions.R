#' Load client data merged with transactions
#' @export
load_client_transactions <- function() {
  M1 = inner_join(client,disp,by="client_id")
  M2 = inner_join(M1,account,by="account_id")
  M3 = inner_join(M2,trans,by="account_id")

}

