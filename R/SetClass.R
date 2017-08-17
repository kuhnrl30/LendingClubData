#' Set the class of the loan
#'
#' Set the class of the loan based on the loan status.
#'
#' @param x loan status
#' @export
#' @return character string. Set 'A' for current loans and
#' 'B'  for loans that are late or in default status.
#'
SetClass<- function(x){
    
    statuses<- c("Current", "Fully Paid", "In Grace Period")

    ifelse(x %in% statuses, "A", "B")

}
