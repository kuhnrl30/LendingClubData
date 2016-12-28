#' Prep raw data download
#'
#' Takes a raw downloaded file and converts the columns to the correct data
#' types. The downloaded file includes character representation of numerical
#' values. For example, "25%" is converted to a numeric 25.
#' @param x file name of a file to convert.
#' @export

Prep_Loan_Data<- function(x){
    f<- read.csv(x,stringsAsFactors = F, skip=1, header=T)

    nulls<- which(is.na(f$loan_status))
    if(!length(nulls)==0){
        f<- f[-nulls,]
    }

    f$int_rate    <- as.numeric(gsub("[%\\s]","", f$int_rate))/100
    f$revol_util  <- as.numeric(gsub("[%\\s]","", f$revol_util))/100
    f$term        <- gsub("['months'|[:blank:]]","", f$term)
    f$emp_title   <- tolower(f$emp_title)

    col_vector<- c("earliest_cr_line", "last_credit_pull_d","next_pymnt_d","issue_d","last_pymnt_d")

    index<- which(names(f) %in% col_vector)

    f[,index]<- lapply(f[,index], DateConv)
    f
}
