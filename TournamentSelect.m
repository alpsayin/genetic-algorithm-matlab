function iSelected = TournamentSelect( fitnessValues, tournamentSelectionParameter, tournamentSize)

populationSize = size(fitnessValues,1) ;

%select 'tournamentSize' candidates for tournament
candidates = zeros(1,tournamentSize);
for k = 1:tournamentSize
    candidates(k) = 1 + fix(rand*populationSize) ;
end

r = rand;

if( r < tournamentSelectionParameter)
    %choose the best individual
    [bestFitnessValue, bestFitnessIndex] = max(fitnessValues);
    iSelected = bestFitnessIndex;
else
    %choose the worst individual
    [worstFitnessValue, worstFitnessIndex] = min(fitnessValues);
    iSelected = worstFitnessIndex;
end

