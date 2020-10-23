#' Load client data merged with transactions
#' @export
load_client_transactions <- function() {
  interm_df <- merge(client, disp, by = "client_id")
  final_df <- merge(interm_df, trans, by ="account_id")
  final_df
}

