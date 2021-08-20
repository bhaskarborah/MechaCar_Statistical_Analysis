# import tidyverse package
library(tidyverse)

# Deliverable 1
# read MechaCar_mpg.csv records
mecha_car_records <- read_csv("MechaCar_mpg.csv") 
head(mecha_car_records)

# perfrom linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mecha_car_records) 

# generate the summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mecha_car_records))


# Deliverable 2
# read Suspension_Coil.csv records
suspension_coil_records <- read_csv("Suspension_Coil.csv")
head(suspension_coil_records)

# create the required total summary dataframe using summarize(), Mean, Median, Variance
total_summary <- suspension_coil_records %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
total_summary

# create the lot_summary dataframe using group_by() and summarize() functions
lot_summary <- suspension_coil_records %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
lot_summary

# Deliverable 3

# take a sample of the suspension coil data - 100 record sample
suspension_coil_sample_records <- suspension_coil_records %>% sample_n(100)

# t.test function() on the sample records
t.test(suspension_coil_sample_records$PSI,mu=mean(suspension_coil_records$PSI)) 

# take a smple of 50 Lot1 records from the suspension coil dataset
suspension_coil_sample_lot1 <- suspension_coil_records %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(50) 

# compare the Lot1 sample against the suspension coil population/total data mean
t.test(suspension_coil_sample_lot1$PSI,mu=mean(suspension_coil_records$PSI))

# take a sample of 50 Lot2 records from the suspension coil dataset
suspension_coil_sample_lot2 <- suspension_coil_records %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(50) 

# compare the Lot2 sample against the suspension coil population/total data mean
t.test(suspension_coil_sample_lot2$PSI,mu=mean(suspension_coil_records$PSI))

# take a sample of 50 Lot3 records from the suspension coil dataset
suspension_coil_sample_lot3 <- suspension_coil_records %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(50) 

# compare the Lot3 sample against the suspension coil population/total data mean
t.test(suspension_coil_sample_lot3$PSI,mu=mean(suspension_coil_records$PSI))


