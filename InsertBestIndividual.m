%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function newPopulation = InsertBestIndividual( population, bestChromosome, nc)

% Replace a random individual with the best chromosome
newPopulation = population;
randIndexes = ceil(rand(nc,1).*size(population,1));
newPopulation(randIndexes,:) = repmat(bestChromosome,nc,1);

return

% Alternatively we can grow the population but generally people don't want growing population
newPopulation = zeros(size(population,1)+nc, size(population,2));
newPopulation(1:size(population,1)) = population;
newPopulation(size(population,1)+1:end) = repmat(bestChromosome,nc,1);

% Deprecated - to be deleted in the next iteration
% for k = 1:nc
%     newPopulation(k,:) = bestChromosome;
% end
