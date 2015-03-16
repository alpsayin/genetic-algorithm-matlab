function newPopulation = InsertBestIndividual( population, bestChromosome, nc)

newPopulation = population;
for k = 1:nc
    newPopulation(k,:) = bestChromosome;
end
