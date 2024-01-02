
#Code testing on GITHUB by Olusola Fajobi

## KNOWLEDGE OF FAMILY PLANNING METHODS
  

## indicators from IR file

# to correct for the situation where variables that should be named as v304_0`i' but where named v304_`i', where i is from 1 to 9.
if("v304_1" %in% colnames(IRdata)) {
  for(i in 1:9) {
    IRdata <- IRdata %>%
      rename(paste0(v304_0,i) == paste0(v304_,i))
  }
}
