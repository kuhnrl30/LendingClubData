#' Dataset of 1.2MM peer-to-peer loans
#'
#' A dataset of historical loan data including the loan status and over 100
#' other variables. Lending Club publishes this data on all loans it has issued
#' since 2007 and refreshes it quarterly. The data is published approximately
#' 6 weeks after the quarter.
#'
#' @return data frame of historical loans
#'
#' @export
IssuedLoans<- function(){
    x<- get(data(list="LendingClubData_1", envir=environment()))
    y<- get(data(list="LendingClubData_2", envir=environment()))

    as.data.frame(rbind(x,y), stringsAsFactors=F )

}
