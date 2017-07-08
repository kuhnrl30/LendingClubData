#' Fill NA values
#'
#' Fills NA values with the given plug value
#'
#' @param x value to check for NA
#' @param y value to plug in place if x is NA
#' @export

FillNA<- function(x,y){
    ifelse(is.na(x),y,x)
}
