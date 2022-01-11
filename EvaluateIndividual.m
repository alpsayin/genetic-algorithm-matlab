%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fitnessValue = EvaluateIndividual(x)

%fitnessValue = (exp(-x(1)^2 -x(2)^2) + sqrt(5)*(sin(x(2)*x(1)*x(1))^2)+ 2*(cos(2*x(1)+ 3*x(2))^2))/( 1+x(1)^2 +x(2)^2);%
g = ( 1 + ((x(1) + x(2) + 1)^2)*(19 -14*x(1) + 3*x(1)^2 -14*x(2) + 6*x(1)*x(2) + 3*x(2)^2) ) * (30 + ((2*x(1) - 3*x(2))^2)*(18 - 32*x(1) + 12*x(1)^2 + 48*x(2) - 36*x(1)*x(2) + 27*x(2)^2) );
fitnessValue = 1/g;
