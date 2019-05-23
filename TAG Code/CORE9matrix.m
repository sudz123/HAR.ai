classdef CORE9matrix
    properties
        core9x = zeros(4);
        core9y = zeros(4);
        
        core = cell(3,3);
        ESI = cell(3,3);
    end
    methods
        function CG = CORE9matrix(A, B)    

%   A and B are 2D regions defined as [xmin, ymin, xmax, ymax]
%   CG is a 2x4 matrix where row 1 is x values of A and B in sorted order, 
%   row 2 is y values of A and B in sorted order
            CG.core9x = sort([A.wholebb.xint(1) A.wholebb.xint(2) B.wholebb.xint(1) B.wholebb.xint(2)]);
            CG.core9y = sort([A.wholebb.yint(1) A.wholebb.yint(2) B.wholebb.yint(1) B.wholebb.yint(2)]);
            
            
            
            state = zeros(2,11);        %extended state info of a single core - dummy: 
                                        %ROW 1 : components corresponding to A, 
                                        %ROW 2 : components corresponding to B
            
            for j = 1:3                            
                for k = 1:3
                    CG.ESI{j,k} = state;   % Intialize all core states to zeroes
                end
            end
            
            for i = 1:3
                for j = 1:3
                    CG.core{i,j} = computeCore(CG, i, j);
                end
            end
            
        end
        
        function c = computeCore(CG, p, q)
            c = Region([CG.core9x(p) CG.core9y(q) CG.core9x(p+1) CG.core9y(q+1)]);
        end
    end
end