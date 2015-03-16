%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function population = InitializePopulation(populationSize, numberOfGenes)

population = zeros(populationSize, numberOfGenes);
for ii = 1: populationSize
    for jj = 1: numberOfGenes
        s = rand;
        if (s < 0.5)
            population(ii,jj)=0;
        else 
            population(ii,jj)=1;
        end
    end
end