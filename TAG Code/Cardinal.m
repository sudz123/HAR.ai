classdef Cardinal
   enumeration
      N, S, E, W, NE, SE, NW, SW, C, X
   end
   %properties
      
   %end
   methods
      function tf = isSame(rel1, rel2)
          tf = (rel1 == rel2);
      end
        
      function str = stringify(rel)
          if(rel == Cardinal.N)
              str = 'North';
          elseif(rel == Cardinal.E)
              str = 'East';
          elseif(rel == Cardinal.S)
              str = 'South';
          elseif(rel == Cardinal.W)
              str = 'West';
          elseif(rel == Cardinal.NE)
              str = 'NEast';
          elseif(rel == Cardinal.SE)
              str = 'SEast';
          elseif(rel == Cardinal.NW)
              str = 'NWest';
          elseif(rel == Cardinal.SW)
              str = 'SWest';
          elseif(rel == Cardinal.C)
              str = 'Centre';
          else
              str = 'X';
          end
      end
      
%       function rel = str2rel(str)
%           if(strcmp(str, 'North'))
%               rel = Cardinal.N;
%           elseif(strcmp(str, 'East'))
%               rel = Cardinal.E;
%           elseif(strcmp(str, 'South'))
%               rel = Cardinal.S;
%           elseif(strcmp(str, 'West'))
%               rel = Cardinal.W;
%           elseif(strcmp(str, 'NEast'))
%               rel = Cardinal.NE;
%           elseif(strcmp(str, 'SEast'))
%               rel = Cardinal.SE;
%           elseif(strcmp(str, 'NWest'))
%               rel = Cardinal.NW;
%           elseif(strcmp(str, 'SWest'))
%               rel = Cardinal.SW;
%           elseif(strcmp(str, 'Centre'))
%               rel = Cardinal.C;
%           end
%       end
      
      
      
      function num = rel2num(rel)
          if(rel == Cardinal.N)
              num = 1;
          elseif(rel == Cardinal.E)
              num = 2;
          elseif(rel == Cardinal.S)
              num = 3;
          elseif(rel == Cardinal.W)
              num = 4;
          elseif(rel == Cardinal.NE)
              num = 5;
          elseif(rel == Cardinal.SE)
              num = 6;
          elseif(rel == Cardinal.NW)
              num = 7;
          elseif(rel == Cardinal.SW)
              num = 8;
          elseif(rel == Cardinal.C)
              num = 9;
          else
              num = 0;                      %X is not defined in CND
          end
      end
      
      function k = compare(rel1, rel2)      % how similar are two relations based on the CND
           cnd = [  0 2 2 2 1 3 1 3 1;
                    2 0 2 2 3 1 3 1 1;
                    2 2 0 2 1 1 3 3 1;
                    2 2 2 0 3 3 1 1 1;
                    1 3 1 3 0 2 2 4 2;
                    3 1 1 3 2 0 4 2 2;
                    1 3 3 1 2 4 0 2 2;
                    3 1 3 1 4 2 2 0 2;
                    1 1 1 1 2 2 2 2 0];        %cnd table in order of enumeration; holds the path length between any 2 relations
          
          c = cnd(rel2num(rel1), rel2num(rel2));
          k = 1 - c/4;                      % c/4 =c/max; because in the cnd 4 is max path length between two relations
      end
   end
end