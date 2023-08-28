clear;
clc;

% Token: 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

%% Load in SpO2 Data 
% Load in .mat data
data = load('ProjectTrainData.mat');

% Isolate oximetry signals 
oxiData = data.SpO2;

% Specify record index 
recordNum = 5;

% Get SpO2 record for this specified index 
oxiPts = oxiData{recordNum};

% Sampling parameters 
fs = 1;   % sampling frequency (100 samples per second)
fsHours = 1/(fs*(60^2));   % convert to hours 

% Create time points (x coords)
numPts = length(oxiPts);
timePts = (0:numPts-1)*fsHours; % want to start at 0

% Plot Oximetry Signal
figure;
plot(timePts, oxiPts);
xlabel('Time (Hours)') 
ylabel('Oxygen Saturation (%)')
xlim([0 max(timePts(:, :))]);