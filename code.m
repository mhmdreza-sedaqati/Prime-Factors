N = input("Please enter a positive number : ");

if (N == 1 || isprime(N))
    disp(N)
    
else
    C = N;
    X = [];
    i = 1;
    while (mod(N , 2) == 0)
        X(i) = 2;
        i = i + 1;
        N = N / 2;
    end
    
    for j = 3:N+1
        while (mod(N , j) == 0)
            X(i) = j;
            i = i + 1;
            N = N / j;
        end
    end
    
    disp([num2str(C) ' = ' num2str(X)]);
    
end