#   MechaCar-Statistical-Analysis

## Overview of Project
Jeremy has been working in AutosRUs for 10 years. The company has realized that they have to modernize their decision making process. Jeremy has an exhaustive knowledge of products and contacts.
Using his exhaustive knowledge, retrospective analysis, analysis of the current inventory and identifying future product testing of the company, Jeremy wants to build his process to improve the decision making of the company, which would consist of:
a. Summary statistics of different variables
b. Visualizations of different datasets
c. Interpretation of different statistical results

A few weeks into this project, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

This project's objective is to ensure that the issues of MechaCar are resolved by performing the below steps:
a. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

b. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

c. Run t-tests to determine if the manufacturing lots are statistically different from the mean population

d. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.



## Purpose

The required input data is available in a Comma Separated Values (CSV) file.

The purpose of this project is to provide the below deliverables:

Deliverable 1: Linear Regression to Predict MPG
Deliverable 2: Summary Statistics on Suspension Coils
Deliverable 3: T-Test on Suspension Coils
Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Results

## Linear Regression to Predict MPG

Deliverable 1: Linear Regression to Predict MPG

![Screen Shot 2021-08-19 at 11.30.31 PM](https://i.imgur.com/CHpJfzm.png)

![Screen Shot 2021-08-19 at 11.31.26 PM](https://i.imgur.com/Uf8WOg6.png)

The Pr(>|t|) co-efficient provides a non-random amount of variance to the mpg values in the dataset. This field represents that each coefficient contributes a random amount of variance to the linear model. 

The slope of the linear model cannot be considered as 0. 
The multi-linear model formula can be interpreted as:
mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    AWD + ground_clearance

which uses the below values:
![Screen Shot 2021-08-19 at 11.42.23 PM](https://i.imgur.com/9xm6sSF.png)

Hence the slope value cannot be considered as 0.

The R-squared value is 0.71 or 71%. Hence we can say that the linear model predict mpg of MechaCar prototypes effectively

## Summary Statistics on Suspension Coils

Deliverable 2: Summary Statistics on Suspension Coils

The total summary of the Suspension Coils dataset:

![Screen Shot 2021-08-19 at 11.47.39 PM](https://i.imgur.com/NHZT6Wt.png)

The lot summary of the Suspension Coils dataset:

![Screen Shot 2021-08-19 at 11.48.29 PM](https://i.imgur.com/nuOg2Ac.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
The global variance is 62.3 pounds per square inch. Hence the design specifications of all manufacturing lots in total is fine and meets the requirement. 
For Lot 1 and Lot 2 the variances are 0.98 and 7.47 pounds per square inch respectively. Hence they meet the design specification.
However for Lot 3 the variance of 170 pounds per square inch is off limits. Hence Lot 3 does not meet the manufacturing design specifications.

## T-Tests on Suspension Coils

Deliverable 3: T-Test on Suspension Coils

T-tests results against a global sample:

![Screen Shot 2021-08-20 at 12.02.17 AM](https://i.imgur.com/z2gSE0m.png)


The p-value is 0.706, which is above significance level (0.05). 
The mean value is 1499.05

T-tests against Lot 1:

![Screen Shot 2021-08-20 at 12.04.48 AM](https://i.imgur.com/rYzcJbW.png)

The p-value is 1.568e-11, which is below significance level (0.05). 
The mean value is 1500

T-tests gains Lot 2:

![Screen Shot 2021-08-20 at 12.06.46 AM](https://i.imgur.com/NOlVUyk.png)

The p-value is 0.0005, which is below significance level (0.05). 
The mean value is 1500.2

T-tests gains Lot 3:

![Screen Shot 2021-08-20 at 12.07.59 AM](https://i.imgur.com/fQM92Qa.png)

The p-value is 0.1589, which is above significance level (0.05). 
The mean value is 1496.14

Wherever the p-value is below the significance level of 0.05, we can reject the Null Hypothesis, else we cannot reject the Null Hypothesis and have to go with the alternate hypothesis.

Null Hypothesis: Pounds Per Square Inch values across all the samples are similar.
Alternate Hypothesis: Pounds Per Square Inch values are different in different lots and vary from the population mean.

## Study Design: MechaCar vs Competition

Deliverable 4: Design a Study Comparing the MechaCar to the Competition

A few metrics that can be useful to a consumer are:
a. city or highway fuel efficiency
b. maintenance cost
c. horse power
d. safety rating
e. cost
f. miles driven
g. vehicle braking system

These metrics can be tested for the MechaCar and the competition to determine the performance of the MechaCar against the competition.

The Null Hypothesis can be: The MechaCar and all the competitor cars have the same performance
The Alternate Hypothesis can be: The MechaCar has a better fuel efficiency on highways than any of the other cars in competition

We can perform a one way ANOVA Test or a two way ANOVA test to compare the MechaCar and its competition.
In the one way ANOVA test, we can compare for example the fuel efficiency of MechaCar and its competition.
In the two way ANOVA test, we can compare the vehicle braking system based on weather condition and transmission type of the MechaCar and its competition.

We would need additional data to perform the statistical test such as horse power, safety rating, cost, fuel efficiency of MechaCar and its competitor cars.


#   MechaCar-Statistical-Summary

Various statistical tools and formulae have been used to provide the required results for this challenge.

To compare the MechaCar and its competition, below hypotheses can be used:

The Null Hypothesis can be: The MechaCar and all the competitor cars have the same performance
The Alternate Hypothesis can be: The MechaCar has a better fuel efficiency on highways than any of the other cars in competition






