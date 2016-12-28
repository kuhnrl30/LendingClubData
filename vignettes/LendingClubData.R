## ---- echo=F-------------------------------------------------------------
knitr::opts_chunk$set(cache=FALSE, fig.height=3, fig.width = 7, comment=NULL, eval=F, tidy=F, width=80)

## ------------------------------------------------------------------------
#  library(LendingClubData)
#  library(dplyr)

## ----makelinks-----------------------------------------------------------
#  Links<- character()
#    Links[1]<- "LoanStats3a.csv"
#    Links[2]<- "LoanStats3b.csv"
#    Links[3]<- "LoanStats3c.csv"
#    Links[4]<- "LoanStats3d.csv"
#    Links[5]<- "LoanStats_2016Q1.csv"
#    Links[6]<- "LoanStats_2016Q2.csv"
#    Links[7]<- "LoanStats_2016Q3.csv"

## ------------------------------------------------------------------------
#  path<-tempdir()
#  
#  lapply(paste0("https://resources.lendingclub.com/",Links,".zip"),
#         GetLoanData,
#         directory=path)
#  
#  df_list<- lapply(paste0(path,"\\",Links),
#                   Prep_Loan_Data)
#  
#  dat<- plyr::rbind.fill(df_list)

## ------------------------------------------------------------------------
#  split<- floor(nrow(dat)/2)
#  LendingClubData_1<- dat[1:split,]
#  LendingClubData_2<- dat[(split+1):nrow(dat),]
#  
#  save(LendingClubData_1, file="data/LendingClubData_1.rda")
#  save(LendingClubData_2, file="data/LendingClubData_2.rda")

