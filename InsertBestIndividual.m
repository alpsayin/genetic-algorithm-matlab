%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function newPopulation = InsertBestIndividual( population, bestChromosome, nc)

newPopulation = population;
for k = 1:nc
    newPopulation(k,:) = bestChromosome;
end
