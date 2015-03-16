%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
close all

populationSize = 5;
numberOfGenes = 10;
population = InitializePopulation(populationSize, numberOfGenes);

for ii=1:populationSize
    subplot(populationSize,1,ii)
    stem(population(ii,:))
end
