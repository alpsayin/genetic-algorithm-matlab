%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function newChromosomePair = Cross( chromosome1, chromosome2)

nGenes = size(chromosome1,2) ; 
crossoverPoint = 1 + fix(rand*(nGenes-1));
assert(crossoverPoint>0 && crossoverPoint<=nGenes);
newChromosomePair(1, :) = [chromosome1(1:crossoverPoint) chromosome2(crossoverPoint+1:end)];
newChromosomePair(2, :) = [chromosome2(1:crossoverPoint) chromosome1(crossoverPoint+1:end)];

% % Deprecated - to be deleted in the next iteration
% for j = 1: nGenes
%     if (j < crossoverPoint)
%         newChromosomePair(1,j) = chromosome1(j);
%         newChromosomePair(2,j) = chromosome2(j);
%     else
%         newChromosomePair(1,j) = chromosome2(j);
%         newChromosomePair(2,j) = chromosome1(j);
%     end
% end

