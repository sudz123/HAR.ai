classdef QDistance
   enumeration
      A, N, Cl, C, X
   end
   
  % properties
       
   %end
   methods
      function tf = isSame(rel1, rel2)
          tf = (rel1 == rel2);
      end
            
      function str = stringify(rel)
          if(rel == QDistance.A)
              str = 'Away';
          elseif(rel == QDistance.N)
              str = 'Near';
          elseif(rel == QDistance.Cl)
              str = 'Close';
          elseif(rel == QDistance.C)
              str = 'Conn'; %Connected
          else
              str = 'X';
          end
      end
      
      
      
      function num = rel2num(rel)
          if(rel == QDistance.A)
              num = 1;
          elseif(rel == QDistance.N)
              num = 2;
          elseif(rel == QDistance.Cl)
              num = 3;
          elseif(rel == QDistance.C)
              num = 4; 
          else
              num = 0;                      %X is not defined in CND
          end
      end
      
      function k = compare(rel1, rel2)      % how similar are two relations based on the CND
          cnd = [0 1 2 3;
                 1 0 1 2;
                 2 1 0 1;
                 3 2 1 0];
          c = cnd(rel2num(rel1), rel2num(rel2));
          k = 1 - c/3;                      % c/3 =c/max; because in the cnd 3 is max path length between two relations
      end
   end
end