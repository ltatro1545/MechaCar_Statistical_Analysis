# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Using a multiple linear regression model to predict MPG within the MechaCar_mpg.csv file to identify variables with significant impact on fuel efficiency.

Vehicle ground clearance, vehicle length, and the intercept of the regression model had very low p-values, meaning they were statistically unlikely to provide random results. Their lack of randomness insinuates that these variables have a notable impact on fuel efficiency.

    Variable            Pr(>|t|)
    ground_clearance:   5.21e-08
    vehicle_length:     2.60e-12
    intercept:          5.08e-08

![D1_Mult_regression](https://user-images.githubusercontent.com/92493572/153731348-74e9d119-8673-46c2-b324-e6830982f080.png)


The slope is not considered to be zero because variables with non-random impacts are present. To support the above p-values, the r-squared value from the regression is 0.7149, meaning there is a strong relationship to the change in MPG. The combination of significant p-values and a strong r-squared value signal that the linear model is an effective way to predict MPG.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?

**Total Summary:**

![D2_total_summary](https://user-images.githubusercontent.com/92493572/153731404-0b4df4c3-6546-4dad-a5de-22c289b7f6de.png)

**Individual Lot Summary:**

![D2_lot_summary](https://user-images.githubusercontent.com/92493572/153731408-333aa21b-76e6-4103-81ed-a4d2bb8f1d75.png)


According to the total_summary table, the PSI variance is 62.3 PSI, which is under the 100 PSI limit, thus within acceptable boundaries. When the data was grouped by lot number, Lot3 had a PSI variance of 170.3, which is greatly over the limit.

## T-Tests on Suspension Coils
T-tests were performed on the suspension coil dataset with a population mean of 1,500 PSI. Initially, the test was performed without grouping by manufacturing lot number. Subsequent T-tests were performed on individual lots. All tests assumed a 95% confidence level. The results are as follows:

    All lots:  0.06028     fail to reject null hypothesis
    Lot1:      1.0         fail to reject null hypothesis
    Lot2:      0.6072      fail to reject null hypothesis
    Lot3:      0.04168     reject null hypothesis

![D3_t-tests](https://user-images.githubusercontent.com/92493572/153731566-d3907152-eb72-4234-938a-859f9f3a0662.png)


All lots (combined) had an almost significant difference in PSI means to the population mean. Even so, it was not enough to reject the null hypothesis. Lot3 produced suspension coils that were significantly different from the population mean of 1,500 PSI. Based on the results, Lot3 is different enough from Lot1 and Lot2 to make a notable impact on the cumulative production of suspension coils.

## Study Design: MechaCar vs Competition
If the success metric for how MechaCar performs against competition is highway fuel efficiency, a two-sample T-test should be conducted. In order to execute the analysis, a dataset for competitor highway MPG would be necessary. Using a dataset that filtered for similar engine size and class would be optimal, as to not compare the highway MPG of a sub-compact vehicle to an SUV. Using a two-tail analysis, we can determine if MechaCar performs significantly better or significantly worse than the competition. Because the stakes are not incredibly high (ie. testing a a braking system), a standard 95% confidence level would be implemented.

Null hypothesis: MechaCar does not have a significantly different highway MPG rating than the competition.
Alternative hypothesis: MechaCar has significantly different (better or worse) highway MPG ratings than the competition.
