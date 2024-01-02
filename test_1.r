
#Code testing on GITHUB by Olusola Fajobi

## KNOWLEDGE OF FAMILY PLANNING METHODS
  
#code area 1
## indicators from IR file

# to correct for the situation where variables that should be named as v304_0`i' but where named v304_`i', where i is from 1 to 9.
if("v304_1" %in% colnames(IRdata)) {
  for(i in 1:9) {
    IRdata <- IRdata %>%
      rename(paste0(v304_0,i) == paste0(v304_,i))
  }
}

#code area 2
# Any method 
IRdata <- IRdata %>%
  mutate(fp_know_any = 
           ifelse(v301 > 0 & v301 < 8, 1, 0)) %>%
  set_value_labels(fp_know_any = c(yes = 1, no = 0)) %>%
  set_variable_labels(fp_know_any = "Know any contraceptive method")


#code area 2 from Github
# Female sterilization  
IRdata <- IRdata %>%
  mutate(fp_know_fster = 
           ifelse(v304_06>0 & v304_06<8, 1, 0)) %>%
  set_value_labels(fp_know_fster = c(yes = 1, no = 0)) %>%
  set_variable_labels(fp_know_fster = "Know female sterilization")


#main #code area 3
# Injectables (Depo-Provera) 
IRdata <- IRdata %>%
  mutate(fp_know_inj = 
           ifelse(v304_03>0 & v304_03<8, 1, 0)) %>%
  set_value_labels(fp_know_inj = c(yes = 1, no = 0)) %>%
  set_variable_labels(fp_know_inj = "Know injectables")








