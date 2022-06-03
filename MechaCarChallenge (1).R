# Load in dplyr
library(tidyverse)

# Read in MechaCar csv
mecha_car_table <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_car_table)

# Get summary stats on linear regression
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_car_table))

# Read in suspension coil data
suspension_table <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)

# Create summary table for all data
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD= sd(PSI))

# Create summary table grouped by lot number
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD= sd(PSI))

# Check for Normal Distriution
ggplot(suspension_table,aes(x=PSI)) + geom_density() 

# Get sample data
sample_suspension <- suspension_table %>% sample_n(50)
ggplot(sample_suspension, aes(x=PSI)) +geom_density()

# test PSI from all lots 
t.test(sample_suspension$PSI, mu=1500)

# test PSI from lot 1
lot1 <- subset(suspension_table, Manufacturing_Lot == "Lot1")
t.test(lot1$PSI, mu=1500)

# test PSI from lot 2
lot2 <- subset(suspension_table, Manufacturing_Lot == "Lot2")
t.test(lot2$PSI, mu=1500)

# test PSI from lot 3
lot3 <- subset(suspension_table, Manufacturing_Lot == "Lot3")
t.test(lot3$PSI, mu=1500)