%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function tempPopulation = Mutate(tempPopulation, mutationProbability)

indexes = rand(size(tempPopulation))<mutationProbability;                 % Index for Mutations
tempPopulation(indexes) = tempPopulation(indexes)*-1+1;                     % Bit Flip Occurs

% Deprecated - to be deleted in the next iteration
% nGenes= size(chromosome,2);
% mutatedChromosome = chromosome;
% for j = 1: nGenes
%     r= rand;
%     if (r < mutationProbability)
%         mutatedChromosome(j) = 1-chromosome(j);
%     end
%     
% end

