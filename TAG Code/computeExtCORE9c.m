function [newRels, ER, level] = computeExtCORE9c(A, B, ER, level)


newRels = 0;        %newRels gives a true false value as to whether any new
                    %has been included in extrel in the current recursion level

%ESI = cell(3,3);     %Extended State Information of objects A and B
% state = zeros(2,11);        %extended state info of a single core - dummy: 
                            %ROW 1 : components corresponding to A, 
                            %ROW 2 : components corresponding to B
% coresetA = cell(1,length(A.partset));       %to keep track of the core positions that overlap a component of A
% coresetB = cell(1,length(B.partset));       %to keep track of the core positions that overlap a component of B

coresetA = cell(1,11);       %to keep track of the core positions that overlap a component of A
coresetB = cell(1,11);       %to keep track of the core positions that overlap a component of B


CM = CORE9matrix(A, B);    
newpartsA = [];
newpartsB = [];
    
for j = 1:3
    for k = 1:3            
        for i = 1:length(A.compset)
            if overlaps(A.compbb{A.compset(i), 1}, CM.core{j, k})
                
            
                CM.ESI{j,k}(1, A.compset(i)) = 1;
                coresetA{1, A.compset(i)} = [coresetA{1, A.compset(i)}; j k];
                if j==2 && k==2
                    newpartsA = [newpartsA A.compset(i)];%if a certain component of A is part of core{2,2} then it is part of new object newA
                end
            end 
            
        end
        
        for i = 1:length(B.compset)
                       
            if overlaps(B.compbb{B.compset(i), 1}, CM.core{j, k})

                CM.ESI{j,k}(2, B.compset(i)) = 1;
                coresetB{1, B.compset(i)} = [coresetB{1, B.compset(i)}; j k];
                if j==2 && k==2
                    newpartsB = [newpartsB B.compset(i)];%if a certain component of B is part of core{2,2} then it is part of new object newB
                end
            end
        end
    end
end
    
%%% The algorithm reported on paper begins %%%%%%%%%%%%%% VERSION 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
for i = 1: length(A.compset)        %compute all possible inter-entity component relations and store in ER{i, j}
    for j = 1: length(B.compset)
        if size(coresetA{1, A.compset(i)}, 2) == size(coresetB{1, B.compset(j)}, 2) && isempty(intersect(coresetA{1, A.compset(i)}, coresetB{1, B.compset(j)}, 'rows' )) % if component i of A and j of B do not belong to the same core
            %compute default relations!!
            newRels = 1;
            top = RCC5.DR;
            dir = computeDefaultCarDir(coresetA{1, A.compset(i)}, coresetB{1, B.compset(j)}); % write function for finding direction
            dis = computeDefaultQdist(coresetA{1, A.compset(i)}, coresetB{1, B.compset(j)}, level);  % write function for finding distance

            str = [stringify(top) '-' stringify(dir) '-' stringify(dis)];
            ER = setCRelation(ER, A.compset(i), B.compset(j), str, top, dir, dis);
            
        else
            top = RCC5.X; dir = Cardinal.X; dis = QDistance.X;
            str = [stringify(top) '-' stringify(dir) '-' stringify(dis)];
            ER = setCRelation(ER, A.compset(i), B.compset(j), str, top, dir, dis);
        end 
    end
end

newA = newEntity(A, newpartsA);
newB = newEntity(B, newpartsB);

if ~isempty(newpartsA) &&  ~isempty(newpartsB)  && ~(isequal(A.compset, newpartsA) && isequal(B.compset, newpartsB))%   recursive call only if core(2,2) is not empty
    level = level+1; 
    [newRels, ER, level] = computeExtCORE9c(newA, newB, ER, level);
end

if newRels == 0  %&& ~isDone(ER)         %if no newrels have been computed in the recursive call, compute relations using CORE9   
    for i = 1:length(newA.compset)
        for j = 1:length(newB.compset)
            [~, top, dir, ~] = computeCORE9_rcc5( newA.compbb{newA.compset(i), 1}, newB.compbb{newB.compset(j), 1});
            if top == RCC5.DR
                dis = QDistance.Cl;
            else
                dis = QDistance.C;
            end
            
            str = [stringify(top) '-' stringify(dir) '-' stringify(dis)];
            ER = setCRelation(ER, newA.compset(i), newB.compset(j), str, top, dir, dis);

        end
    end
end

%%%The algorithm reported on paper ends%%%%%%%%%%%%%%%%VERSION 2
end