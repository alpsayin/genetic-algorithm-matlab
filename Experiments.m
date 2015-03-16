clear
close all

numberOfRuns = 20;

minimum = zeros(1,numberOfRuns);

for averageRun=1:numberOfRuns
    FunctionOptimization;
    minimum(1,averageRun) = 1/maximumFitness;
end

clc
average = mean(minimum)
standardDeviation = std(minimum)
