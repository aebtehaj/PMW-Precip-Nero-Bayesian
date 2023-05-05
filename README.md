# Passive Microwave Precipitation Retrievals using Neural Networks: A Regression or a Classification problem?
This repository contains MATLAB files demonstrating the difference between recasting the passive microwave retrieval of precipitation as a regression versus a classification problem.

The traning dataset can be downloaded at https://drive.google.com/file/d/116Avkt2rxE2hn24xGTqbgMPl59SM28gJ/view?usp=sharing

## Abstract
This paper demonstrates that recasting the satellite passive microwave retrievals of precipitation through classification neural networks, with cross-entropy loss function can increase the precision in the detection of precipitation occurrence and phase, by more than 10%, compared to the commonly used regression-based networks that rely on the mean-squared loss function. Embedding a classic Bayesian estimator in the feature space of a neural network, equipped with the focal-loss function, we demonstrate that the network can learn the positively skewed distribution of precipitation for improved retrieval of its extreme rates in terms of the critical success index. To that end, the coincidences of passive and active observations from the precipitation radiometer and radar onboard the Global Precipitation Measuring satellite are used.
 
<img src="https://user-images.githubusercontent.com/46690843/236521711-20b29731-b1a9-418f-906f-46848174e667.png" width=30% height=30%>
Fig 1: A schematic showing the two pathways taken for passive microwave retrieval of precipitation using coincidence of GPM microwave imager (GMI) and dual-frequency precipitation radar (DPR) data including (i)  mean-squared loss function (MSE, regression) and (ii) combination of cross-entropy (CE) and focal loss (FL) functions (classification). For the classification route, to retrieve the rates, the pre-trained focal-loss network transforms the inputs into a lower-dimensional feature space (n=10) to feed a classic k-nearest neighbor Bayesian retrieval algorithm. The inputs are 13 GMI brightness temperatures, 2-m air temperature, water vapor path (WVP), cloud liquid (LWP), and ice water paths (IWP), as well as convective potential energy (CAPE) from ERA5. The neural networks have three hidden layers with n number of neurons at each layer equipped with the rectified linear unit (ReLU) activation function.


<img src="https://user-images.githubusercontent.com/46690843/236521568-1fe10da0-1ea3-4c49-8d85-93e67e90cc4f.png" width=50% height=50%>
Fig 2: Results for the GPM orbit #3498 on October 10, 2014. Brightness temperatures at 37 (a) and 166 (b) GHz, passive retrievals using regression (c) and classification (d) networks, ERA5 precipitation (e), and DPR active retrievals (f).


