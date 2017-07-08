#' Compound Annual Growth Rate 
#' 
#' Calculate the compound annual growth rate for a given investment.
#' 
#' @param start starting value of an investment
#' @param end end value of an investment 
#' @param periods number of periods covered during 
#'  
#' @export
#'  
CAGR<- function(start, end, periods) {
    (end/start)^(1/periods)-1
    }