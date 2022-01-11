%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = DecodePopulation(population, numberOfVariables, variableRange)

populationSize = size(population, 1);
x = zeros(populationSize, numberOfVariables);
numberOfBits = size(population,2) / numberOfVariables;

for index = 1:numberOfVariables
    geneRangeStart = (((index-1)*numberOfBits)+1);
    geneRangeEnd = index*numberOfBits;
    x(:,index) = sum(population( :, geneRangeStart:geneRangeEnd ).*repmat((2.^-(1:numberOfBits)),populationSize,1), 2);
%     % Deprecated - to be deleted in the next iteration
%     for jj = 1:numberOfBits
%         x(index) = x(index) + chromosome(jj + (index-1)*numberOfBits )*(2^(-jj)) ;
%     end
    x(:,index) = -variableRange + 2*variableRange*x(:,index)/(1-2^(-numberOfBits));
end
