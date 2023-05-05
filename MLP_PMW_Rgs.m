function net = MLP_PMW_Rgs(X_train,Y_train,X_val,Y_val)

numFeatures = size(X_train,2);

layers = [
   featureInputLayer(numFeatures,'Normalization', 'zscore')
   fullyConnectedLayer(50)
   batchNormalizationLayer
   reluLayer
   %dropoutLayer(0.5)
   fullyConnectedLayer(50)
   batchNormalizationLayer
   reluLayer
   %dropoutLayer(0.5)
   fullyConnectedLayer(50)
   batchNormalizationLayer
   reluLayer
   fullyConnectedLayer(1)
   reluLayer
   %maeRegressionLayer('mae')
   regressionLayer
   ];

options = trainingOptions("adam", ...
    InitialLearnRate=0.001, ...    
    LearnRateSchedule="piecewise", ...
    LearnRateDropFactor=0.2, ...
    LearnRateDropPeriod=2, ...
    MaxEpochs=6, ...    
    Verbose=false, ...
    MiniBatchSize=20000, ...
    ValidationData = {X_val,Y_val},...
    L2Regularization = 0.00001,...
    ValidationFrequency = 25,...
    Plots="none",...
    ExecutionEnvironment="auto",...
    Verbose=1,...
    VerboseFrequency=25);

net = trainNetwork(X_train,Y_train,layers,options);

end