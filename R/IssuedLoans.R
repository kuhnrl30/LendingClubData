#' Dataset of 1.2MM peer-to-peer loans
#'
#' A dataset of historical loan data including the loan status and over 100
#' other variables. Lending Club publishes this data on all loans it has issued
#' since 2007 and refreshes it quarterly. The data is published approximately
#' 6 weeks after the quarter.
#' @param years numeric vector of years to return 
#' @return data frame of historical loans
#'
#' @export
IssuedLoans<- function(years=c(2007:2017)){
    
    if( years > 2007 && years > 2017) {
        stop("Year range is not valid")
        }
    
    
    year_list= paste0("LendingClubData_",years)
    x<-plyr::rbind.fill(get(data(list=year_list, package="LendingClubData")))

    rm(list=year_list, envir=.GlobalEnv)
    x
}
