# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

In this multiple linear regression, vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the car is AWD were all included in an analysis to determine whether they help predice the mpg of a new vehicle. To determine whether this linear regression model is useful and can be accurately used to calculate the mpg, we will first look at whether each variable provides a non-random amount of variance to the mpg, which is determined using the p-value of each variable. If the p-value is less than 0.05, then the variable provides a non-random amount of variance. As you can see in the screen shot below, vehicle length and ground clearance are the only variables that have a p-value of less than 0.05 and, therefore, have a significant impact on the mpg.

Another important item to look at in this multiple linear regression model is the overall p-value of the model, which is 5.35e-11. Since the overall p-value is less than 0.05, we can reject the null hypothesis that the slope of the model is zero.

Lastly, let's look at Rsquared value of the model, which is 0.71. Typically, an Rsquared value of 0.7 or greater means that it is a good model and can be used to predict the independent variable. Based solely on this number, I would say that this is a good model. However, since 3 of our 5 variables can produce random amounts of variance to the model, it's possible that this model suffers from overfitting. In order to create a better model, I would consider eliminating one dependent variable at a time (starting with the highest p-value) and analyze the effect it has on the model characteristics.

<img width="463" alt="Deliverable 1 Screenshot" src="https://user-images.githubusercontent.com/88349443/143986509-d4abe5dc-111d-41dd-9243-3643dd4c5df9.png">

## Summary Statistics on Suspension Coils

In order to determine if the manufacturing of suspension coils is consistent across lots, the weight capacities were tested across 3 different lots and the summary data is detailed below. The first table contains the summary data for all three lots combined and the second is the total summary data for each lot.

If the variance does not exceed 100 PSI, then we can say that manufacturing is consistent. As you can see in the first chart, the variance of all of the lots combined is within this specification, at ~62 PSI. Based solely on this data, one might assume that the manufacturing is consistent enough and does not require intervention. However, that assumption would be premature because when you look at the lots individually, you can see tht the variance of the parts in lot 3 exceeds the variance specification by quite a lot, with a variance of ~170 PSI. While the other two lots have very consistent manufacturing results, with the mean being the same across both and the variance being well within the specification, the variance of the third lot is 3,900% more than the average of lots 1 & 2, which is  problematic. I would suggest a review of the production of lot three to determine what could be causing the variance to be so different from the other two lots.

<img width="343" alt="Total Summary" src="https://user-images.githubusercontent.com/88349443/144677043-ebc5a1d3-18ec-4ef2-be5a-16b48ffc436e.png">  <img width="495" alt="Lot Summary" src="https://user-images.githubusercontent.com/88349443/144677053-edb4c76d-583f-4a5f-8dcc-5edf9ec06515.png">

## T-Tests on Suspension Coil

In order to determine whether the PSI of the suspension coils are statistically different from the population mean of 1,500 PSI, t-tests were performed on the entire data as well as on each of the manufacturing lots. We will use a significance level of 0.05 to determine the statistical significance. If the p-value of the t-test is below the 0.05 significance level, then we can say that the mean of the manufacturing lots are not statistically significant. If it is above the significance level, then the manufacturing lots are statistically significant. Below are the results of each of these 4 t-tests.

The first t-test was performed on all three manufacturing lots combined. The results of this test include a p-value of 0.06. This is slightly above our 0.05 significance level, meaning the mean of all three lots is statistically similar to the population mean. Similarly, the p-value of the t-test on Lots 1 and 2 are 1.0 and 0.6, both well above 0.05, which means the mean of these two lots is also statistically similar to the population mean.

However, the p-value of Lot 3 was below our significance level at 0.04, which shows us that the suspension coils produced in this lot are not statistically similar to our population mean of 1,500 pounds per square inch. Much like our conclusion in the previous section, Lot 3 is further confirmed by this test to be problematic.

<img width="402" alt="Complete t-test" src="https://user-images.githubusercontent.com/88349443/144725166-05735cfc-d097-485f-876f-543aa800d824.png"> <img width="400" alt="Lot1 t-test" src="https://user-images.githubusercontent.com/88349443/144725170-5bf2ce7d-62b8-451d-bbd7-dd8d6d54db24.png"> <img width="403" alt="Lot2 t-test" src="https://user-images.githubusercontent.com/88349443/144725176-6878f2ce-4070-43c4-8ebe-0ea485a78e9d.png"> <img width="401" alt="Lot3 t-test" src="https://user-images.githubusercontent.com/88349443/144725177-583f0d4a-8d61-498e-84c3-8b23eeccf089.png">

## Study Design: MechaCar vs Competition

In order to best compare MechaCar to the competition, I propose that we do a one-way t-test with the total population and a one way ANOVA test with the top 5 vehicles in the category. The first thing would be to create a list of the 5 most important metrics to compare against. This list should include price, fuel economy, safety rating, reliability, and average reviews. The second thing to do would be to get an average for each of these metrics across all of the cars within the same category. This will be considered the population mean. Third, I would choose 5 of the highest selling and/or highest rated cars within this category and find out the data for each metric and vehicle in this list.

The first statistical test I would perform with this data is a one-way t-test on each of the chosen metrics for the MechaCar data vs the population mean. The null hypothesis for each of these is no statistical difference between the MechaCar mean and the population mean for each metric. If the p-value is above 0.05 for each of the 5 t-tests, then we can fail to reject the null hypothesis and say that the MechaCar is statistically similar to the population.

The second statistical test I would perform is a one-way ANOVA test on each of the metrics for the chosen 5 "best" vehicles in the same category (for example, the fuel economy of the MechaCar and the fuel economy of each of the 5 competitor vehicles). In doing this, we can determine if the MechaCar is statistically similar to the strongest selling vehicles that we are competing against. The null hypothesis for this test is that the metric for each vehicle is equal. 
