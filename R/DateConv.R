#' Convert string to data
#'
#' Converts LendingClubs data format for use in R
#'
#' @param x character string to convert to date value
#' @export

DateConv<- function(x){
    suppressWarnings(
        if(x==""){
            return(NA)
        } else{
            a<- strsplit(x, split = "-")
            b<- sapply(a, function(x) paste(x[2],
                                            match(x[1],month.abb),
                                            "01",
                                            sep="-"))
            as.Date(b)
        }
    )
}
