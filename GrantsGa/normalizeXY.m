function xy = normalizeXY(xy,variableRange)
% Normalizes the range of xy to variableRange(1) <= xy <= variableRange(2)

%% Initialize Vector
R1 = max(max(xy)) - min(min(xy));
for i = 1:length(xy);
    A = xy(i,:); % Grab One Row of xy
    
%% Normalize to 0 <= A <= 1
    
    A = (A-min(min(xy)))/R1;
%% Scale to X <= A <= Y
    R2 = variableRange(2)-variableRange(1);
    A = A*R2 + variableRange(1);
    
%% Replace Row of xy with Normalized Version
    xy(i,:) = A;
end

end

