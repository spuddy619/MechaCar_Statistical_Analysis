### Dev 1 ###

#check for "dplyr" and "tidyverse" packages 
#set appropriate working directory

#4.)Read in MechaCar_mpg.csv as a dataframe
# COLUMNS: 
  #Vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg
mecha_mpg <- read.csv("Resources/MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#5.)Perform linear regression - lm() function
mecha_mpg_reg <- lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#6.) Using the summary() function, determine p-value and r-squared value for the linear regression model
summary(mecha_mpg_reg)
summary(mecha_mpg_reg)$r.squared     #extraneous
summary(mecha_mpg_reg)$coefficients  #extraneous



### Dev 2 ###
#.2) import and read in Suspension_Coil.csv
mecha_suspension <-read.csv("Resources/Suspension_Coil.csv", check.name = F, stringsAsFactors = F)

#3.) Create a "total_summary" df with "summarize()" NOT "summary()" --> get mean, median, variance, standard deviation of PSI column 

total_summary <- mecha_suspension %>% summarize(Mean = mean(PSI),
                                                Median = median(PSI),
                                                Variance = var(PSI),
                                                SD = sd(PSI),
                                                .groups = 'keep')


#4.)"lot_summary" dataframe using the "group_by" and "Summarize" functions; group by Manufacturing_Lot -> mean, median, variance, standard deviation of PSI
lot_summary <- mecha_suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                              Median = median(PSI),
                                                                              Variance = var(PSI),
                                                                              SD = sd(PSI),
                                                                              .groups = 'keep')



