function U = erlanc_upper_bound(N, U)
%erlanc_upper_bound: Tight upper bound for Erlang C
%   Tight upper bound for Erlang C
%   -N: number of servers
%   -U: system load or server utilization (lambda/(mu x N))
%   Author: Victor E. Bazterra
%   Reference:
%   -Janssen, A. J. E. M., J. S. H. Van Leeuwaarden, and Bert Zwart. 
%    "Refining square-root safety staffing by expanding Erlang C." 
%    Operations Research 59.6 (2011): 1512-1522.
alpha = sqrt(-2*N*(1-U+log(U)));
Phi = normcdf(alpha);
phi = exp(-0.5*(alpha^2))/sqrt(2*pi);
gamma = (1-U)*sqrt(N);
U = 1/(U + gamma*(Phi/phi + 2/(3*sqrt(N))));
end

