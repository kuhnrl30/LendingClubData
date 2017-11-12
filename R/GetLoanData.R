#' Get loan data from Lending Club
#' 
#' Downloads the loan data from Lending Club's website. The links to the data 
#' downloads return a zipped folder.  This function will unzip the folder and to
#' extract the .csv file and then delete the initial zip folder.  No action is
#' taken on the underlying data file.
#' @param address URL for data to download
#' @param directory relative path where the files will be saved
#' @export

GetLoanData<- function(address, directory){
    destination<- paste0(directory,"\\LoanData.zip")
    
    download.file(address, destfile=destination, quiet=TRUE)
    unzip(destination,exdir=directory)
    unlink(destination)
    cat(address, " has been downloaded")
}
