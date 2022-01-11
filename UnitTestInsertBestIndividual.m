%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
close all

populationSize = 5;
numberOfGenes = 10;
population = ones(populationSize, numberOfGenes);

for ii=1:populationSize
    subplot(populationSize,1,ii)
    stem(population(ii,:))
end


bestChromosome = zeros(1,numberOfGenes);

newPopulation = InsertBestIndividual(population, bestChromosome, 2);

figure
for ii=1:populationSize
    subplot(populationSize,1,ii)
    stem(newPopulation(ii,:))
end

