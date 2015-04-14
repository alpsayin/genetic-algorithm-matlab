%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fitnessValue = EvaluatePopulation(x, runParallel)

if ~exist('runParallel','var')
    runParallel = false;
end

fitnessValue = zeros(size(x,1),1);
if runParallel
    parfor index = 1:size(x,1)
        fitnessValue(index) = EvaluateIndividual(x(index,:));
    end
else
    for index = 1:size(x,1)
        fitnessValue(index) = EvaluateIndividual(x(index,:));
    end
end