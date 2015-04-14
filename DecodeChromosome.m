%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alp_sayin[at]ieee[dot]org
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = DecodeChromosome (chromosome, numberOfVariables, variableRange)

x = zeros(1,numberOfVariables);
numberOfBits = size(chromosome,2) / numberOfVariables;

for index = 1:numberOfVariables
    x(index) = 0.0 ;
    geneRangeStart = (((index-1)*numberOfBits)+1);
    geneRangeEnd = index*numberOfBits;
    x(index) = sum(chromosome( geneRangeStart:geneRangeEnd ).*(2.^-(1:numberOfBits)));
%     % Deprecated - to be deleted in the next iteration
%     for jj = 1:numberOfBits
%         x(index) = x(index) + chromosome(jj + (index-1)*numberOfBits )*(2^(-jj)) ;
%     end
    x(index) = -variableRange + 2*variableRange*x(index)/(1-2^(-numberOfBits));
end
