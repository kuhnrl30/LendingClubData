#' Get loan data from Lending Club
#'
#' Downloads the loan data from Lending Club's website. The data
#' downloads in zip format which this function will unzip.
#'
#' @param address URL for data to download
#' @param directory relative path where the files will be saved

GetLoanData<- function(address, directory){
    destination<- paste0(directory,"\\LoanData.zip")

    download.file(address, destfile=destination, quiet=TRUE)
    unzip(destination,exdir=directory)
    unlink(destination)
    cat(address, " has been downloaded")
}
