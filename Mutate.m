%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function mutatedChromosome = Mutate(chromosome, mutationProbability)

nGenes= size(chromosome,2);
mutatedChromosome = chromosome;
for j = 1: nGenes
    r= rand;
    if (r < mutationProbability)
        mutatedChromosome(j) = 1-chromosome(j);
    end
    
    idx = rand(size(Pop2))<mutRate;                 % Index for Mutations
    Pop2(idx) = Pop2(idx)*-1+1;                     % Bit Flip Occurs
end

