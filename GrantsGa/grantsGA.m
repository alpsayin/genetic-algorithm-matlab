%% Standard Genetic Algorithm
clear;close all;clc;
format long g
%% Parameters
popSize = 100;                              % Population Size
genome = 10;                                % Genome Size
mutRate = .01;                              % Mutation Rate
S = 4;                                      % Tournament Size
limit = 100;                                % Number of Generations
best = -1e9;                                % Initialize Best
F = zeros(limit,1);                         % Initialize Fitness
variableRange = [-3,3];
numberOfVariables = 2;
%% Initialize Population
Pop = round(rand(popSize,genome));

%% Initial Fitness
xy = decode(Pop,popSize);           % Convert to Binary
xy = normalizeXY(xy,variableRange); % Normalize to x1 <= XY <= x2    
initialFitness = getFitness(xy);    % Fitness function goes here
initialConditions = [initialFitness xy];
%% Begin Main Algorithm
tic
for Gen = 1:limit
    %% Fitness
    
    xy = decode(Pop,popSize);           % Convert to Binary
    xy = normalizeXY(xy,variableRange); % Normalize to x1 <= XY <= x2
    F = getFitness(xy);                 %Fitness function goes here
    
    [current,currentIdx] = max(F);
    
    if current > best
        best = current;
        bestGenome = xy(currentIdx,:);
    end
    
    %% Print Stats
    fprintf('Gen: %d    Best Fitness: %d\n', Gen, max(F));
    
    %% Tournament Selection
    T = round(rand(2*popSize,S)*(popSize-1)+1);     % Tournaments
    [~,idx] = max(F(T),[],2);                       % Index of Winners
    W = T(sub2ind(size(T),(1:2*popSize)',idx));     % Winners
    
    %% 2 Point Crossover
    
    Pop2 = Pop(W(1:2:end),:);                   % Set Pop2 = Pop Winners 1
    P2A  = Pop(W(2:2:end),:);                   % Assemble Pop2 Winners 2

    % Split Pop2 for x and y genomes
    xPop2 = Pop2(:,1:genome/2);
    yPop2 = Pop2(:,genome/2 + 1:end);

    % Split P2A for x and y genomes
    xP2A = P2A(:,1:genome/2);
    yP2A = P2A(:,genome/2+2:end);

    % For x genome
    Ref  = ones(popSize,1)*(1:genome/2);                     % Reference Matrix
    CP   = sort(round(rand(popSize,2)*(genome/2-1)+1),2);    % Crossover Points
    xidx  = CP(:,1)*ones(1,genome/2)<Ref & CP(:,2)*ones(1,genome/2)>Ref;   % Logical Index
    xPop2(xidx) = xP2A(xidx);                       % Recombine Winners


    % For y genome
    Ref  = ones(popSize,1)*(1:genome/2);                     % Reference Matrix
    CP   = sort(round(rand(popSize,2)*(genome/2-1)+1),2);    % Crossover Points
    yidx  = CP(:,1)*ones(1,genome/2)<Ref & CP(:,2)*ones(1,genome/2)>Ref;   % Logical Index
    yPop2(yidx) = yP2A(yidx);                       % Recombine Winners

    Pop2 = horzcat(xPop2,yPop2);
    P2A = horzcat(xP2A,yP2A);

    %% Mutation (bitflip)
    idx = rand(size(Pop2))<mutRate;                 % Index for Mutations
    Pop2(idx) = Pop2(idx)*-1+1;                     % Bit Flip Occurs
    
    %% Reset Poplulations
    Pop = Pop2;
    
end % End main loop
%% Final Fitness stuff
finalFitness = getFitness(xy);    % Fitness function goes here
finalConditions = [finalFitness xy];

%% Prints Best Stats
disp('-----------------------------------------');
fprintf('Best Fitness: ');
disp(best);
disp('Best Genome: ');
disp(bestGenome);

toc  
