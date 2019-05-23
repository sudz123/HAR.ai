% input is the array of cores containing parts of ai and bj
function dir = computeDefaultCarDir(coreset_ai, coreset_bj) 

% sz_ai = size(coreset_ai);   %sz_ai = [m 2], m is the number of cores containing ai
% sz_bj = size(coreset_bj);   %similarly for sz_bj

min_ai = min(coreset_ai, [], 1);   % min_ai = [minx miny]
min_bj = min(coreset_bj, [], 1);   % min_bj = [minx miny]

max_ai = max(coreset_ai, [], 1);   % max_ai = [maxx maxy]
max_bj = max(coreset_bj, [], 1);   % max_bj = [maxx maxy]

north = -1;                 %if 1 then north, 0 then south
west = -1;                  %if 1 then west, 0 then east


if min_ai(1) < min_bj(1) && max_ai(1) <= max_bj(1)
    west = 1;
elseif min_ai(1) > min_bj(1) && max_ai(1) >= max_bj(1)
    west = 0;
end
if min_ai(2) < min_bj(2) && max_ai(2) <= max_bj(2)
    north = 0;
elseif min_ai(2) > min_bj(2) && max_ai(2) >= max_bj(2)
    north = 1;
end

if north == 1 && west == 1
    dir = Cardinal.NW;
elseif north == 1 && west == 0
    dir = Cardinal.NE;
elseif north == 1 && west == -1
    dir = Cardinal.N;
elseif north == 0 && west == 1
    dir = Cardinal.SW;
elseif north == 0 && west == 0
    dir = Cardinal.SE;
elseif north == 0 && west == -1
    dir = Cardinal.S;
elseif north == -1 && west == 1
    dir = Cardinal.W;
elseif north == -1 && west == 0
    dir = Cardinal.E;
elseif north == -1 && west == -1
    dir = Cardinal.C;
end

end