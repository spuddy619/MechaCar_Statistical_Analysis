# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/72320203/153801089-117cf4d3-32fd-4f2e-a6b2-ae404bfd9823.png)
 
 Looking at the above image we can conclude:<br>
 1.) The following variables are unlikely to provide random amounts of variance to the linear model:<br/>
 -vehicle_length (p-value: 2.60e-12)<br/>
 -ground_clearance (p-value: 5.21e-08)<br/>
 These two variables are statistically unlikely to provide random amounts of variance to the linear model; essentially, this means that these two variables are significantly impacting the miles per gallon on the car prototypes.<br/>
 
 
 2.) The slope of the linear model is not zero. When the slope of a linear model is zero, the null hypothesis is true. The p-value of the linear model is 5.35e-11; this is much lower than the assumed level of significance (0.05). This means that we must reject our null hypothesis and this consequently means that the slope is not zero. <br/>
 
 3.)This model effectively predicts the mpg of the prototypes. Whether or not a model can effectively predict future outcomes can be determined by the r-squared value. Based on the summary function above, the r-squared value for the model is 0.7149, meaning that around 71 percent of mpg predictions from this model will be correct. Therefore, the model does effectively predict mpgs of the prototypes. <br/>
 
 

