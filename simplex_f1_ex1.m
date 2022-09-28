function [res] = simplex_f1_ex1(is_max)
    if nargin == 0
        is_max = false;
    end
   
    c = [60, 60, 45, 45];
    if is_max
       c = - c;
    end

    A = [1 1 0 0; 0 0 1 1; 1 0 1 0; 0 1 0 1];
    b = [2500; 2000; 2100; 1900];
    
    lb = [0, 0, 0, 0];
    ub = [Inf, Inf, Inf, Inf];

    res = linprog(c, A, b, [], [], lb, ub, 0);
end