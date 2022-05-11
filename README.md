# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results of prototype cars. The other measured fields are "vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", and "AWD". With this dataset we are looking to see which fields influence (or don't) the mpg statistics.
![image](https://user-images.githubusercontent.com/72320203/153801089-117cf4d3-32fd-4f2e-a6b2-ae404bfd9823.png)
 
 **Looking at the above image we can conclude:**<br>
 1.) The following variables are unlikely to provide random amounts of variance to the linear model:<br/>
 - vehicle_length (p-value: 2.60e-12)<br/>
 - ground_clearance (p-value: 5.21e-08)<br/>

These two variables are statistically unlikely to provide random amounts of variance to the linear model; essentially, this means that these two variables are significantly impacting the miles per gallon on the car prototypes.<br/>
 
 
2.) The slope of the linear model is not zero. When the slope of a linear model is zero, the null hypothesis is true. The p-value of the linear model is 5.35e-11; this is much lower than the assumed level of significance (0.05). This means that we must reject our null hypothesis and this consequently means that the slope is not zero. <br/>
 
 3.) This model effectively predicts the mpg of the prototypes. Whether or not a model can effectively predict future outcomes can be determined by the r-squared value. Based on the summary function above, the r-squared value for the model is 0.7149, meaning that around 71 percent of mpg predictions from this model will be correct. Therefore, the model does effectively predict mpgs of the prototypes. <br/>
 
 ## Summary Statistics on Suspension Coils
 We are looking to now calculate details about the "PSI" column in "Suspension_Coil.csv". To do so, we have created two datasets from "Suspension_Coil.csv": <br/>
 1.)One  table that contains the mean, median, variance, and standard deviation of the "PSI" column. <br/>
 2.)Another table that has those same statistics but grouping them by "Manufacturing_Lot" <br/>
 These two tables can be seen below:
 

 ![image](https://user-images.githubusercontent.com/72320203/153969208-77ecabbf-5eba-442b-876a-cf239b1d9df4.png)
 ![image](https://user-images.githubusercontent.com/72320203/153969518-c55af2a4-397b-4673-8653-4a0d06df0128.png)
 
We have been tasked with concluding whether or not the suspension coils meet certain design specifications - in total and in each lot individually. The company dictates that the variance of the suspension coil must not exceed 100 pounds per square inch. In total, we are looking at a PSI variance of 62.29356 which is comfortably within the 100 PSI variance design specification. When considering each lot, variances of lots 1 and 2 are within the design specifications (0.9795918 and 7.4693878, respectively) while lot 3 does not meet the specification with a variance of 170.2861224.

 
## T-Tests on Suspension Coils
Here, we perform t-tests to determine if the manufacturing lots - in total and separately - are statistically different from the population mean of 1,500 pounds per square inch. This image shows the code for the determinations:
![image](https://user-images.githubusercontent.com/72320203/153992788-41c29632-df65-477a-8f8b-e9a5bbdffec9.png)

 ### All Lots
![image](https://user-images.githubusercontent.com/72320203/153993228-f5b9246b-ac98-4762-82f0-9e350c01b207.png)<br/>
Looking at the t-test we see that the calculated p-value is 0.06028. This is above the assumed significance level of 0.05. Therefore, we
cannot reject the null hypothesis and consequently this means that in their entiretly, the lots are statistically similar to the population mean of 1,500
lbs/square inch.
 
### Individual Lots 
#### Lot 1
![image](https://user-images.githubusercontent.com/72320203/153994105-d40fafcc-d1a8-4e05-8f9c-066dfa579a12.png)<br/>
Looking at the t-test of Lot 1, we can see that the calculated p-value is 1. This is above the significance level of 0.05. Therefore, we cannot reject the null hypothesis and consequently this means that Lot 1 is statistically similar to the population mean of 1,500 lbs/square inch.

#### Lot 2
![image](https://user-images.githubusercontent.com/72320203/153994779-bafbf5ac-e6f4-4eeb-bf08-615518c4bbab.png)<br/>
Looking at the t-test of Lot 2, we can see that the calculated p-value is 0.6072. This is greater than the significance level of 0.05. Therefore, we cannot reject the null hypothesis and consequently this means that Lot 2 is statistically similar to the population mean of 1,500 lbs/square inch.

#### Lot 3
![image](https://user-images.githubusercontent.com/72320203/153995152-bbcb2663-a870-4143-8756-1c91942f40f2.png)<br/>
Looking at the t-test of Lot 3, we can see that the calculated p-value is 0.04168. This is less than the assumed significance level of 0.05. Therefore, we must reject the null hypothesis and consequently this means that Lot 3 is statistically different from the population mean of 1,500 lbs/square inch.

## Study Design: MechaCar vs Competition
How does the performance of MechaCar vehicles compare against performances of vehicles from other manufacturers? <br/>

By comparing the MechaCar against their competitors with statistical studies of the considerations made previously in the analysis (PSI, mpg, vehicle_length, etc.) and more, we can better improve the MechaCar prototypes.

### Comparison Considerations:
#### Metrics to Test
- mpg <br/>
- PSI <br/>
- selling price <br/>
- resale value <br/>
- value deprecation <br/>
- maintenance <br/>
- auto insurance <br/>
- fuel efficiency <br/>
- what the consumer wants (cheaper? more fuel efficient? durable? etc.) <br/>
- in their analyses, what is their preferred significance level? Is it 0.05 or is it more stringent? less stringent? <br/>

#### Hypothesis: Null and Alternative
- Null Hypothesis: The rate at which the MechaCar depreciates is comparable to that of its competitors <br/>
- Alternative Hypothesis: The rate at which the MechaCar depreciates is not comparable to that of its competitors <br/>

#### Statistical Tests to be Used and Data Needed
- multiple linear regression would be used to identify factors that most influence the deprecation of a vehicle's value. By identifying what contributes to this issue, MechaCars can make a deliberate effort to create a car that maintains its value longer than their competitors. <br/>
- Data about the competition's vehicles as well as how they gather and analyze their information would be helpful. <br/>
- Data from dealerships that specifically reevalute these cars and reappraise them should also be collected.





 
 



