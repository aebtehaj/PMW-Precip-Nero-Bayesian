# Passive Microwave Precipitation Retrievals using Neural Networks: A Regression or a Classification problem?
This repository contains MATLAB files demonstrating the difference between recasting the passive microwave retrieval of precipitation as a regression versus a classification problem.
## Abstract
This paper demonstrates that recasting the satellite passive microwave retrievals of precipitation through classification neural networks, with cross-entropy loss function can increase the precision in the detection of precipitation occurrence and phase, by more than 10\%, compared to the commonly used regression-based networks that rely on the mean-squared loss function. Embedding a classic Bayesian estimator in the feature space of a neural network, equipped with the focal-loss function, we demonstrate that the network can learn the positively skewed distribution of precipitation for improved retrieval of its extreme rates in terms of the critical success index. To that end, the coincidences of passive and active observations from the precipitation radiometer and radar onboard the Global Precipitation Measuring satellite are used.


![Fig_05](https://user-images.githubusercontent.com/46690843/236521568-1fe10da0-1ea3-4c49-8d85-93e67e90cc4f.png)
