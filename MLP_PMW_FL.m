function net = MLP_PMW_FL(numClasses,X_train,Y_train,X_val,Y_val)

numFeatures = size(X_train,2);
layers = [
   featureInputLayer(numFeatures,'Normalization', 'zscore')
   fullyConnectedLayer(50)
   batchNormalizationLayer
   reluLayer
   %dropoutLayer
   fullyConnectedLayer(50)
   batchNormalizationLayer
   reluLayer
   %dropoutLayer
   fullyConnectedLayer(10)
   batchNormalizationLayer
   reluLayer
   %dropoutLayer
   fullyConnectedLayer(numClasses)
   softmaxLayer
   focalLossLayer("Alpha",0.1,"Gamma",5)];

options = trainingOptions("adam", ...
    InitialLearnRate=0.001, ...    
    LearnRateSchedule="piecewise", ...
    LearnRateDropFactor=0.2, ...
    LearnRateDropPeriod=5, ...
    MaxEpochs=5, ...    
    Verbose=false, ...
    MiniBatchSize=1024, ...
    ValidationData = {X_val,Y_val},...
    ValidationFrequency = 25,...
    ExecutionEnvironment="multi-gpu");

net = trainNetwork(X_train,Y_train,layers,options);

end