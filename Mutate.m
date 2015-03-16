function mutatedChromosome = Mutate(chromosome, mutationProbability)

nGenes= size(chromosome,2);
mutatedChromosome = chromosome;
for j = 1: nGenes
    r= rand;
    if (r < mutationProbability)
        mutatedChromosome(j) = 1-chromosome(j);
    end
end

