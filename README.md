# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In this multiple linear regression, vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the car is AWD were all included in an analysis to determine whether they help predice the mpg of a new vehicle. To determine whether this linear regression model is useful and can be accurately used to calculate the mpg, we will first look at whether each variable provides a non-random amount of variance to the mpg, which is determined using the p-value of each variable. If the p-value is less than 0.05, then the variable provides a non-random amount of variance. As you can see in the screen shot below, vehicle length and ground clearance are the only variables that have a p-value of less than 0.05 and, therefore, have a significant impact on the mpg.

Another important item to look at in this multiple linear regression model is the overall p-value of the model, which is 5.35e-11. Since the overall p-value is less than 0.05, we can reject the null hypothesis that the slope of the model is zero.

Lastly, let's look at Rsquared value of the model, which is 0.71. Typically, an Rsquared value of 0.7 or greater means that it is a good model and can be used to predict the independent variable. Based solely on this number, I would say that this is a good model. However, since 3 of our 5 variables can produce random amounts of variance to the model, it's possible that this model suffers from overfitting. In order to create a better model, I would consider eliminating one dependent variable at a time (starting with the highest p-value) and analyze the effect it has on the model characteristics.

<img width="463" alt="Deliverable 1 Screenshot" src="https://user-images.githubusercontent.com/88349443/143986509-d4abe5dc-111d-41dd-9243-3643dd4c5df9.png">

## Summary Statistics on Suspension Coils

In order to determine if the manufacturing of suspension coils is consistent across lots, the weight capacities were tested across 3 different lots and the summary data is detailed below. The first table contains the summary data for all three lots combined and the second is the total summary data for each lot.

If the variance does not exceed 100 PSI, then we can say that manufacturing is consistent. As you can see in the first chart, the variance of all of the lots combined is within this specification, at ~62 PSI. Based solely on this data, one might assume that the manufacturing is consistent enough and does not require intervention. However, that assumption would be premature because when you look at the lots individually, you can see tht the variance of the parts in lot 3 exceeds the variance specification by quite a lot, with a variance of ~170 PSI. While the other two lots have very consistent manufacturing results, with the mean being the same across both and the variance being well within the specification, the variance of the third lot is 3,900% more than the average of lots 1 & 2, which is  problematic. I would suggest a review of the production of lot three to determine what could be causing the variance to be so different from the other two lots.

<img width="343" alt="Total Summary" src="https://user-images.githubusercontent.com/88349443/144677043-ebc5a1d3-18ec-4ef2-be5a-16b48ffc436e.png">
<img width="495" alt="Lot Summary" src="https://user-images.githubusercontent.com/88349443/144677053-edb4c76d-583f-4a5f-8dcc-5edf9ec06515.png">
