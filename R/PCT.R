#' Round to 2 decimal places
#'
#' Simple wrapper for the round function which converts a decimal percentage
#' to a integer value
#' @param x decimal value
#' @export
PCT<- function(x){
    round(x*100,2)
}
