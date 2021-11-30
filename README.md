# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In this multiple linear regression, vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the car is AWD were all included in an analysis to determine whether they help predice the mpg of a new vehicle. To determine whether this linear regression model is useful and can be accurately used to calculate the mpg, we will first look at whether each variable provides a non-random amount of variance to the mpg, which is determined using the p-value of each variable. If the p-value is less than 0.05, then the variable provides a non-random amount of variance. As you can see in the screen shot below, vehicle length and ground clearance are the only variables that have a p-value of less than 0.05 and, therefore, have a significant impact on the mpg.

Another important item to look at in this multiple linear regression model is the overall p-value of the model, which is 5.35e-11. Since the overall p-value is less than 0.05, we can reject the null hypothesis that the slope of the model is zero.

Lastly, let's look at Rsquared value of the model, which is 0.71. Typically, an Rsquared value of 0.7 or greater means that it is a good model and can be used to predict the independent variable. Based solely on this number, I would say that this is a good model. However, since 3 of our 5 variables can produce random amounts of variance to the model, it's possible that this model suffers from overfitting. In order to create a better model, I would consider eliminating one dependent variable at a time (starting with the highest p-value) and analyze the effect it has on the model characteristics.

