function xy = decode(Pop,popSize)
    % Convert from Binary to Decimal
    cPop1 = Pop(1:end, 1:end/2);
    cPop2= Pop(1:end, end/2+1:end);

    % Sub Function for Binary to Decimal Conversion
    temp1 = 0; temp2=0;
    d = zeros(1, length(Pop));
    e = zeros(1,length(Pop));

    for j = 1:popSize
        A = cPop1(j, 1:end);
        for i =1: length(A)
            temp1 = A(i)*2^(length(A)-i) + temp1;
        end % End i loop
    d(j) = temp1;
    temp1 = 0;
    end % End j loop

    for jj = 1:popSize
        B = cPop2(jj, 1:end);
        for ii =1:length(B)
            temp2 = B(ii)*2^(length(B)-ii) + temp2;
        end % End ii loop
    e(jj) = temp2;
    temp2=0;
    end % End jj loop

    %-----------------
        e = e';
        d = d';
    %----------------------
    xy = [d,e]; % Unnormalized answer
  
end % End function

