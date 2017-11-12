A package with the historical loan data from Lending Club.  The site refreshes it's loan data 6 weeks after the end of each quarter. This package will be refreshed periodically to capture the new data as it is published. 

## Installation
```{r}
devtools::install_github("kuhnrl30/LendingClubData")
```

## Getting the Data
You can view the code used to download the data at the the link below or by reading the vignette.
- [LendingClubData](docs/LendingClubData.html)  

```{r}
vignette("LendingClubData")
```

[![Build Status](https://travis-ci.org/kuhnrl30/LendingClubData.svg?branch=master)](https://travis-ci.org/kuhnrl30/LendingClubData)