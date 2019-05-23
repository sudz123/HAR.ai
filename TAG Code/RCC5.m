classdef RCC5
   enumeration
      DR, PO, EQ, PP, PPI, X
   end
   %properties
       
   %end
   methods
      function tf = isSame(rel1, rel2)
          tf = (rel1 == rel2);
      end
      
      function tf = isSameRel(strrel, rel)
          tf = (str2rel(strrel) == rel);
      end
            
      function str = stringify(rel)
          if(rel == RCC5.DR)
              str = 'DR';
          elseif(rel == RCC5.PO)
              str = 'PO';
          elseif(rel == RCC5.EQ)
              str = 'EQ';
          elseif(rel == RCC5.PP)
              str = 'PP';
          elseif(rel == RCC5.PPI)
              str = 'PPI';
          else
              str = 'X';
          end
      end
      
      
      
      function n = rel2num(rel)
          if(rel == RCC5.DR)
              n = 1;
          elseif(rel == RCC5.PO)
              n = 2;
          elseif(rel == RCC5.EQ)
              n = 3;
          elseif(rel == RCC5.PP)
              n = 4;
          elseif(rel == RCC5.PPI)
              n = 5;
          else
              n = 0;                        %X is not defined in CND
          end
      end
      
      function k = compare(rel1, rel2)      % how similar are two relations based on the CND
          cnd = [0 1 2 2 2; 
              1 0 1 1 1; 
              2 1 0 1 1; 
              2 1 1 0 2; 
              2 1 1 2 0] ;     %cnd table in order of enumeration; holds the path length between any 2 relations
          c = cnd(rel2num(rel1), rel2num(rel2));
          k = 1 - c/2;                      % c/2 =c/max; because in the cnd 2 is max path length between two relations
      end
   end
end