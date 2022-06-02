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

