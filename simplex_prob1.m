function [res] = simplex_prob1(is_max)
    if nargin == 0
        is_max = false;
    end
   
    c= [10000, 20000];
    if is_max
       c = - c;
    end

    A=[1, 1; 0.7, 3.5];
    b=[100; 210];
    
    lb=[0, 0];
    ub=[Inf, Inf];

    res = linprog(c, A, b, [], [], lb, ub, 0);
end