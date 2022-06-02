library(tidyverse)

mecha_car_table <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_car_table)

summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_car_table))

