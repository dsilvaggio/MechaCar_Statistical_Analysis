# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contained mpg test results from 50 prototype Mechacars. The prototypes were produced using various design specifications to determine the ideal vehicle performance. Several metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each prototype vehicle. R was used to run a multiple linear regression model to determine if mpg (miles per gallon) can be predicted for a Mechacar vehicle using vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. The output of our model can be seen below:

![This is an image](https://github.com/dsilvaggio/MechaCar_Statistical_Analysis/blob/main/Resources/Screen%20Shot%202022-06-02%20at%202.44.55%20PM.png)

Based on the above output, our resulting model could be written as:

### mpg = 6.3(vehicle_length) + 0.0012(vehicle_height) + .069(spoiler_angle) + 3.5(ground_clearance) - 3.4 (AWD) - 104

1) Vehicle length, ground clearance, and the intercept value are statistically unlikely to provide random amounts of variance to the mpg values in the dataset. In other words, the vehicle length and ground clearance do have a significant impact on the mpg of a Mechacar. The intercept being significant tells us that this intercept term explains a significant amount of variability of mpg when all of our other variables are set to 0.  
2) Since our model returned a p-value (5.53e-11) that is less than our significance level of 0.05, we can reject the null hypothesis that our slope would be equal to 0. Thus, the slope of this linear model would not be equal to 0.
3) According to our r-squared value of 0.71, roughly 71% of the variability  of mpg is explained using our linear model. However, since this model only returned 2 significant variables this could show evidence of overfitting. Thus, this model might perform well with our current dataset but would fail to predict future data correctly. Furthermore, the fact that our intercept was included as a significant variable could also mean that there are other variables not included in this model that could help explain the variability of the mpg. 

## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv contained the results from multiple production lots. The weight capacities of different suspension coils were tested to see if the manufacturing process is consistent across the multiple production lots. R was used to create two summary statistics tables of suspension coil's PSI, one across all manufacturing lots and another for each lot. 

### Summary for Manufacturing Lots in Total
Based on design specficiations for the MechaCar, the variance of the suspension coils must not exceed 100 pounds per square inch. The results of the summary table for all manufacturing lots can be seen below.

![This is an image](https://github.com/dsilvaggio/MechaCar_Statistical_Analysis/blob/main/Resources/Screen%20Shot%202022-06-02%20at%203.31.01%20PM.png)

Our variance for all manufacturing lots is 62.3, which does fall below the 100 pounds per square inch threshold. All manufacturing lots in total do meet this design specfication. 

### Summary for Individual Manufacturing Lots
In order to determine if each lot met this requirement individually, the results were first grouped by lot ID and then individual summary statistics were found. The results are as shown below.
![This is an image](https://github.com/dsilvaggio/MechaCar_Statistical_Analysis/blob/main/Resources/Screen%20Shot%202022-06-02%20at%203.34.47%20PM.png)

Lot 1 and Lot 2 both have a variance that falls way below the 100 pounds per square inch threshold, so both of these lots do meet the design specificiation. However, lot 3 has a variance that is way above the threshold. This lot does not meet the design specificiation and shows evidence of an inconsistent manufacturing process.

