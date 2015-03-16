# genetic-algorithm-matlab
A very simple Genetic Algorithm implementation for matlab, easy to use, easy to modify runs fast.

To Run
------
Run the FunctionOptimization script.

To Modify Optimization Function
---------------------------------
Replace your own function into EvaluateIndividual.m script. Note that this genetic algorithm tries to maximise the output so invert your function according to your needs. Right now it tries to locate the peak of a double variable function. It can be adjusted to optimize for more than two variable functions.

To Modify Genetic Algorithm Parameters
--------------------------------------
All the parameters are located in the FunctionOptimization.m script.
populationSize -> number of individuals in a population
numberOfGenes -> number of bits per chromosome
crossoverProbability -> probability that a crossover will happen between two individuals
mutationProbability -> probability that a mutation will occur in an individual
tournamentSelectionParameter -> probability that either the best or the worst of the population will be selected for tournament
variableRange -> the range in which the genes will be decoded into. basically minimum and maximum values of the parameters
numberOfGenerations -> number of iterations to run genetic algorithm
numberOfVariables -> number of variables stored in one chromosome
tournamentSize -> currently not used. in a different variant of genetic algorithm, this value determines the number of individuals to be mated
numberOfReplications -> after a generation is run, this number of best individuals are copied back into the population to ensure the solution quality does not degrade

Licensing Stuff
---------------
Please dont remove my name from the codes.