% input is the array of cores containing parts of ai and bj, level is the recursion level
function dis = computeDefaultQdist(coreset_ai, coreset_bj, level) 
sz_ai = size(coreset_ai);   %sz_ai = [m 2], m is the number of cores containing ai
sz_bj = size(coreset_bj);   %similarly for sz_bj

%min_ai = min(coreset_ai, [], 1);   % min_ai = [minx miny]
%min_bj = min(coreset_bj, [], 1);   % min_bj = [minx miny]

%max_ai = max(coreset_ai, [], 1);   % max_ai = [maxx maxy]
%max_bj = max(coreset_bj, [], 1);   % max_bj = [maxx maxy]

adj = 0;   %0 if not, 1 for adjacent cores
nadj = 0;   %0 if not, 1 for non-adjacent cores
same = 0;   %0 if not, 1 for same cores

for i=1:sz_ai(1)
    for j=1:sz_bj(1)
        if max(abs( coreset_ai(i,:) - coreset_bj(j,:) )) == 2
            nadj = 1;
        elseif max(abs( coreset_ai(i,:) - coreset_bj(j,:) )) == 1
            adj = 1;
        elseif max(abs( coreset_ai(i,:) - coreset_bj(j,:) )) == 0
            same = 1;
        end
    end
end

if nadj && ~adj && ~same  
    if level == 0
        dis = QDistance.A;
    else
        dis = QDistance.Cl;
    end
elseif adj && ~same  
    if level == 0
        dis = QDistance.N;
    else
        dis = QDistance.Cl;
    end
elseif same  
    dis = QDistance.Cl;
end
end