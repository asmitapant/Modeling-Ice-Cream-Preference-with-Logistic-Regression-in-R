# Modeling-Ice-Cream-Preference-with-Logistic-Regression-in-R
This mini project models the probability of someone liking ice cream based on the outdoor temperature using logistic regression. A small dataset is created manually, and a logistic model is fitted using R’s glm() function. The predicted probabilities and binary classifications are visualized, and a smooth logistic curve is plotted to reveal the relationship between temperature and preference. The example highlights the concept of binary classification and sigmoid curves for beginners in data science.
.

🔍 What Happens in the Code
Let’s unpack the magic:

Dataset Creation:

Temperature ranges from 10°C to 30°C.

LikesIcecream is binary (0 or 1), assuming warmer temperatures → higher preference.

Model Fitting:

You fit a logistic regression using glm() with binomial family to predict LikesIcecream from Temperature.

Prediction:

predict(..., type="response") gives the estimated probabilities from the logistic function.

You classify them into 0 or 1 based on the 0.5 threshold.

Visualization:

The scatterplot shows actual data points.

lines() plots the fitted logistic curve, giving a nice visual of how probability of liking ice cream rises with temperature.
