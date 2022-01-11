%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   Alp Sayin - alpsayin[at]alpsayin[dot]com - https://alpsayin.com
%   Matlab Genetic Algorithm
%   Spring 2012
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function iSelected = TournamentSelect( fitnessValues, tournamentSelectionParameter, tournamentSize)

populationSize = size(fitnessValues,1) ;

%select 'tournamentSize' candidates for tournament
candidates = 1 + fix(rand(1,tournamentSize)*populationSize);
candidateFitnesses = fitnessValues(candidates);
[~, sortedIndexes] = sort(candidateFitnesses,1,'descend');
selectionProbabilityMatrix = tournamentSelectionParameter*((1-tournamentSelectionParameter).^(0:tournamentSize-2)');
r = rand;
iSelected = candidates(sortedIndexes(r>selectionProbabilityMatrix));
if isempty(iSelected)
    iSelected = candidates(sortedIndexes(end));
else
    iSelected = iSelected(1);
end
