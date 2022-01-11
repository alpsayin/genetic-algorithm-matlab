%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


population = [0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1
              0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1];
numberOfVariables = 4;
variableRange = 2;

x = DecodePopulation(population, numberOfVariables, variableRange)
