
function newChromosomePair = Cross( chromosome1, chromosome2)

nGenes = size(chromosome1,2) ; 
crossoverPoint = 1 + fix(rand*(nGenes-1));

newChromosomePair = zeros(2,nGenes);
for j = 1: nGenes
    if (j < crossoverPoint)
        newChromosomePair(1,j) = chromosome1(j);
        newChromosomePair(2,j) = chromosome2(j);
    else
        newChromosomePair(1,j) = chromosome2(j);
        newChromosomePair(2,j) = chromosome1(j);
    end
end

