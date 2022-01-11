%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
close all

chromosome1 = zeros(1,10);
chromosome2 = ones(1,10);

v = [1 10 -2 2];
subplot(2,2,1)
stem(chromosome1)
axis(v)
title('chromosome1 (before cross)')
subplot(2,2,3)
stem(chromosome2)
axis(v)
title('chromosome2 (before cross)')

newChromosomePair = Cross(chromosome1, chromosome2);

subplot(2,2,2)
stem(newChromosomePair(1,:))
axis(v)
title('chromosome1 (after cross)')
subplot(2,2,4)
stem(newChromosomePair(2,:))
axis(v)
title('chromosome2 (after cross)')
