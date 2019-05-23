%The CORE9 configuration matrix corresponding to the table provided by
%CORE9 team
function [config, topr, dir, dist] = core9config(row, col)

%%%%%%%%%%%%%%column 1
core9configs(1,1).state ...
                  =   [ 1 0 0;...
                        0 0 0;...
                        0 0 2 ];
core9configs(1,1).tpgcl = RCC8.DC;
core9configs(1,1).dirnl = Cardinal.SW;
core9configs(1,1).dist = QDistance.A;
                    
core9configs(2,1).state ...
                  =   [ 1 0 0; 
                        4 4 4;
                        0 0 2 ];
core9configs(2,1).tpgcl = RCC8.DC;
core9configs(2,1).dirnl = Cardinal.SW;
core9configs(2,1).dist = QDistance.A;
                    
core9configs(3,1).state ...
                  =   [ 1 0 0; 
                        1 0 2;
                        0 0 2 ];
core9configs(3,1).tpgcl = RCC8.DC;
core9configs(3,1).dirnl = Cardinal.SW;
core9configs(3,1).dist = QDistance.A;

core9configs(4,1).state ...
                  =   [ 4 4 4; 
                        1 0 2;
                        0 0 2 ];
core9configs(4,1).tpgcl = RCC8.DC;
core9configs(4,1).dirnl = Cardinal.SW;
core9configs(4,1).dist = QDistance.A;
              
core9configs(5,1).state ...
                  =   [ 0 0 2; 
                        1 0 2;
                        0 0 2 ];
core9configs(5,1).tpgcl = RCC8.DC;
core9configs(5,1).dirnl = Cardinal.W;
core9configs(5,1).dist = QDistance.A;
                    
core9configs(6,1).state ...
                  =   [ 0 0 2; 
                        1 0 2;
                        4 4 4 ];
core9configs(6,1).tpgcl = RCC8.DC;
core9configs(6,1).dirnl = Cardinal.NW;
core9configs(6,1).dist = QDistance.A;
                    
core9configs(7,1).state ...
                  =   [ 4 4 4; 
                        1 0 2;
                        1 0 0 ];
core9configs(7,1).tpgcl = RCC8.DC;
core9configs(7,1).dirnl = Cardinal.NW;
core9configs(7,1).dist = QDistance.A;
                    
core9configs(8,1).state ...
                  =   [ 1 0 0; 
                        1 0 2;
                        1 0 0 ];
core9configs(8,1).tpgcl = RCC8.DC;
core9configs(8,1).dirnl = Cardinal.W;
core9configs(8,1).dist = QDistance.A;
                    
core9configs(9,1).state ...
                  =   [ 1 0 0; 
                        1 0 2;
                        4 4 4 ];
core9configs(9,1).tpgcl = RCC8.DC;
core9configs(9,1).dirnl = Cardinal.SW;
core9configs(9,1).dist = QDistance.A;
                    
core9configs(10,1).state ...
                  =   [ 0 0 2; 
                         1 0 2;
                         1 0 0 ];
core9configs(10,1).tpgcl = RCC8.DC;
core9configs(10,1).dirnl = Cardinal.NW;
core9configs(10,1).dist = QDistance.A;
                    
core9configs(11,1).state ...
                  =   [ 0 0 2; 
                         4 4 4;
                         1 0 0 ];
core9configs(11,1).tpgcl = RCC8.DC;
core9configs(11,1).dirnl = Cardinal.NW;
core9configs(11,1).dist = QDistance.A;
                    
core9configs(12,1).state ...
                  =   [ 0 0 2; 
                         0 0 0;
                         1 0 0 ];
core9configs(12,1).tpgcl = RCC8.DC;
core9configs(12,1).dirnl = Cardinal.NW;
core9configs(12,1).dist = QDistance.A;
                
core9configs(13,1).state ...
                  =   [ 4 4 4; 
                         1 0 2;
                         4 4 4 ];
core9configs(13,1).tpgcl = RCC8.DC;
core9configs(13,1).dirnl = Cardinal.W;
core9configs(13,1).dist = QDistance.A;
                     
%%%%%%%%%%%%%%%column 2
core9configs(1,2).state ...
                  =   [ 1 4 0; 
                        0 4 0;
                        0 4 2 ];
core9configs(1,2).tpgcl = RCC8.DC;
core9configs(1,2).dirnl = Cardinal.SW;
core9configs(1,2).dist = QDistance.A;
                    
core9configs(2,2).state ...
                  =   [ 1 4 0; 
                        4 4 4;
                        0 4 2 ];
core9configs(2,2).tpgcl = RCC8.EC;
core9configs(2,2).dirnl = Cardinal.SW;
core9configs(2,2).dist = QDistance.N;
                    
core9configs(3,2).state ...
                  =   [ 1 4 0; 
                        1 4 2;
                        0 4 2 ];
core9configs(3,2).tpgcl = RCC8.EC;
core9configs(3,2).dirnl = Cardinal.SW;
core9configs(3,2).dist = QDistance.N;

core9configs(4,2).state ...
                  =   [ 4 4 4; 
                        1 4 2;
                        0 4 2 ];
core9configs(4,2).tpgcl = RCC8.EC;
core9configs(4,2).dirnl = Cardinal.SW;
core9configs(4,2).dist = QDistance.N;
              
core9configs(5,2).state ...
                  =   [ 0 4 2; 
                        1 4 2;
                        0 4 2 ];
core9configs(5,2).tpgcl = RCC8.EC;
core9configs(5,2).dirnl = Cardinal.W;
core9configs(5,2).dist = QDistance.N;
                    
core9configs(6,2).state ...
                  =   [ 0 4 2; 
                        1 4 2;
                        4 4 4 ];
core9configs(6,2).tpgcl = RCC8.EC;
core9configs(6,2).dirnl = Cardinal.NW;
core9configs(6,2).dist = QDistance.N;
                    
core9configs(7,2).state ...
                  =   [ 4 4 4; 
                        1 4 2;
                        1 4 0 ];
core9configs(7,2).tpgcl = RCC8.EC;
core9configs(7,2).dirnl = Cardinal.NW;
core9configs(7,2).dist = QDistance.N;
                    
core9configs(8,2).state ...
                  =   [ 1 4 0; 
                        1 4 2;
                        1 4 0 ];
core9configs(8,2).tpgcl = RCC8.EC;
core9configs(8,2).dirnl = Cardinal.W;
core9configs(8,2).dist = QDistance.N;
                    
core9configs(9,2).state ...
                  =   [ 1 4 0; 
                        1 4 2;
                        4 4 4 ];
core9configs(9,2).tpgcl = RCC8.EC;
core9configs(9,2).dirnl = Cardinal.SW;
core9configs(9,2).dist = QDistance.N;
                    
core9configs(10,2).state ...
                  =   [ 0 4 2; 
                         1 4 2;
                         1 4 0 ];
core9configs(10,2).tpgcl = RCC8.EC;
core9configs(10,2).dirnl = Cardinal.NW;
core9configs(10,2).dist = QDistance.N;
                    
core9configs(11,2).state ...
                  =   [ 0 4 2; 
                         4 4 4;
                         1 4 0 ];
core9configs(11,2).tpgcl = RCC8.EC;
core9configs(11,2).dirnl = Cardinal.NW;
core9configs(11,2).dist = QDistance.N;
                    
core9configs(12,2).state ...
                  =   [ 0 4 2; 
                        0 4 0;
                        1 4 0 ];
core9configs(12,2).tpgcl = RCC8.EC;
core9configs(12,2).dirnl = Cardinal.NW;
core9configs(12,2).dist = QDistance.N;
                
core9configs(13,2).state ...
                  =   [ 4 4 4; 
                        1 4 2;
                        4 4 4 ];
core9configs(13,2).tpgcl = RCC8.EC;
core9configs(13,2).dirnl = Cardinal.W;
core9configs(13,2).dist = QDistance.N;
 
%%%%%%%%%%%%%%column 3                     
core9configs(1,3).state ...
                  =   [ 1 1 0; 
                        0 0 0;
                        0 2 2 ];
core9configs(1,3).tpgcl = RCC8.DC;
core9configs(1,3).dirnl = Cardinal.SW;
core9configs(1,3).dist = QDistance.A;
                    
core9configs(2,3).state ...
                  =   [ 1 1 0; 
                        4 4 4;
                        0 2 2 ];
core9configs(2,3).tpgcl = RCC8.EC;
core9configs(2,3).dirnl = Cardinal.SW;
core9configs(2,3).dist = QDistance.N;
                    
core9configs(3,3).state ...
                  =   [ 1 1 0; 
                        1 3 2;
                        0 2 2 ];
core9configs(3,3).tpgcl = RCC8.PO;
core9configs(3,3).dirnl = Cardinal.SW;
core9configs(3,3).dist = QDistance.C;

core9configs(4,3).state ...
                  =   [ 4 4 4; 
                        1 3 2;
                        0 2 2 ];
core9configs(4,3).tpgcl = RCC8.PO;
core9configs(4,3).dirnl = Cardinal.SW;
core9configs(4,3).dist = QDistance.C;
              
core9configs(5,3).state ...
                  =   [ 0 2 2; 
                        1 3 2;
                        0 2 2 ];
core9configs(5,3).tpgcl = RCC8.PO;
core9configs(5,3).dirnl = Cardinal.W;
core9configs(5,3).dist = QDistance.C;
                    
core9configs(6,3).state ...
                  =   [ 0 2 2; 
                        1 3 2;
                        4 4 4 ];
core9configs(6,3).tpgcl = RCC8.PO;
core9configs(6,3).dirnl = Cardinal.NW;
core9configs(6,3).dist = QDistance.C;
                    
core9configs(7,3).state ...
                  =   [ 4 4 4; 
                        1 3 2;
                        1 1 0 ];
core9configs(7,3).tpgcl = RCC8.PO;
core9configs(7,3).dirnl = Cardinal.NW;
core9configs(7,3).dist = QDistance.C;
                    
core9configs(8,3).state ...
                  =   [ 1 1 0; 
                        1 3 2;
                        1 1 0 ];
core9configs(8,3).tpgcl = RCC8.PO;
core9configs(8,3).dirnl = Cardinal.W;
core9configs(8,3).dist = QDistance.C;
                    
core9configs(9,3).state ...
                  =   [ 1 1 0; 
                        1 3 2;
                        4 4 4 ];
core9configs(9,3).tpgcl = RCC8.PO;
core9configs(9,3).dirnl = Cardinal.SW;
core9configs(9,3).dist = QDistance.C;
                    
core9configs(10,3).state ...
                  =   [ 0 2 2; 
                         1 3 2;
                         1 1 0 ];
core9configs(10,3).tpgcl = RCC8.PO;
core9configs(10,3).dirnl = Cardinal.NW;
core9configs(10,3).dist = QDistance.C;
                    
core9configs(11,3).state ...
                  =   [ 0 2 2; 
                         4 4 4;
                         1 1 0 ];
core9configs(11,3).tpgcl = RCC8.EC;
core9configs(11,3).dirnl = Cardinal.NW;
core9configs(11,3).dist = QDistance.N;
                    
core9configs(12,3).state ...
                  =   [ 0 2 2; 
                         0 0 0;
                         1 1 0 ];
core9configs(12,3).tpgcl = RCC8.DC;
core9configs(12,3).dirnl = Cardinal.NW;
core9configs(12,3).dist = QDistance.A;
                
core9configs(13,3).state ...
                  =   [ 4 4 4; 
                         1 3 2;
                         4 4 4 ];
core9configs(13,3).tpgcl = RCC8.PO;
core9configs(13,3).dist = QDistance.C;
core9configs(13,3).dirnl = Cardinal.W;
                     
%%%%%%%%%%%%%column 4
                     
core9configs(1,4).state ...
                  =   [ 4 1 0; 
                        4 0 0;
                        4 2 2 ];
core9configs(1,4).tpgcl = RCC8.DC;
core9configs(1,4).dirnl = Cardinal.SW;
core9configs(1,4).dist = QDistance.A;
                    
core9configs(2,4).state ...
                  =   [ 4 1 0; 
                        4 4 4;
                        4 2 2 ];
core9configs(2,4).tpgcl = RCC8.EC;
core9configs(2,4).dirnl = Cardinal.SW;
core9configs(2,4).dist = QDistance.N;
                    
core9configs(3,4).state ...
                  =   [ 4 1 0; 
                        4 3 2;
                        4 2 2 ];
core9configs(3,4).tpgcl = RCC8.PO;
core9configs(3,4).dirnl = Cardinal.SW;
core9configs(3,4).dist = QDistance.C;

core9configs(4,4).state ...
                  =   [ 4 4 4; 
                        4 3 2;
                        4 2 2 ];
core9configs(4,4).tpgcl = RCC8.TPP;
core9configs(4,4).dirnl = Cardinal.SW;
core9configs(4,4).dist = QDistance.C;
              
core9configs(5,4).state ...
                  =   [ 4 2 2; 
                        4 3 2;
                        4 2 2 ];
core9configs(5,4).tpgcl = RCC8.TPP;
core9configs(5,4).dirnl = Cardinal.W;
core9configs(5,4).dist = QDistance.C;
                    
core9configs(6,4).state ...
                  =   [ 4 2 2; 
                        4 3 2;
                        4 4 4 ];
core9configs(6,4).tpgcl = RCC8.TPP;
core9configs(6,4).dirnl = Cardinal.NW;
core9configs(6,4).dist = QDistance.C;
                    
core9configs(7,4).state ...
                  =   [ 4 4 4; 
                        4 3 2;
                        4 1 0 ];
core9configs(7,4).tpgcl = RCC8.PO;
core9configs(7,4).dirnl = Cardinal.NW;
core9configs(7,4).dist = QDistance.C;
                    
core9configs(8,4).state ...
                  =   [ 4 1 0; 
                        4 3 2;
                        4 1 0 ];
core9configs(8,4).tpgcl = RCC8.PO;
core9configs(8,4).dirnl = Cardinal.W;
core9configs(8,4).dist = QDistance.C;
                    
core9configs(9,4).state ...
                  =   [ 4 1 0; 
                        4 3 2;
                        4 4 4 ];
core9configs(9,4).tpgcl = RCC8.PO;
core9configs(9,4).dirnl = Cardinal.SW;
core9configs(9,4).dist = QDistance.C;
                    
core9configs(10,4).state ...
                  =   [ 4 2 2; 
                         4 3 2;
                         4 1 0 ];
core9configs(10,4).tpgcl = RCC8.PO;
core9configs(10,4).dirnl = Cardinal.NW;
core9configs(10,4).dist = QDistance.C;
                    
core9configs(11,4).state ...
                  =   [ 4 2 2; 
                         4 4 4;
                         4 1 0 ];
core9configs(11,4).tpgcl = RCC8.EC;
core9configs(11,4).dirnl = Cardinal.NW;
core9configs(11,4).dist = QDistance.N;
                    
core9configs(12,4).state ...
                  =   [ 4 2 2; 
                         4 0 0;
                         4 1 0 ];
core9configs(12,4).tpgcl = RCC8.DC;
core9configs(12,4).dirnl = Cardinal.NW;
core9configs(12,4).dist = QDistance.A;
                
core9configs(13,4).state ...
                  =   [ 4 4 4; 
                         4 3 2;
                         4 4 4 ];
core9configs(13,4).tpgcl = RCC8.TPP;
core9configs(13,4).dirnl = Cardinal.W;
core9configs(13,4).dist = QDistance.C;
                     
%%%%%%%%%%%%%%%%%%%column 5
                     
core9configs(1,5).state ...
                  =   [ 0 1 0; 
                        0 0 0;
                        2 2 2 ];
core9configs(1,5).tpgcl = RCC8.DC;
core9configs(1,5).dirnl = Cardinal.S;
core9configs(1,5).dist = QDistance.A;
                    
core9configs(2,5).state ...
                  =   [ 0 1 0; 
                        4 4 4;
                        2 2 2 ];
core9configs(2,5).tpgcl = RCC8.EC;
core9configs(2,5).dirnl = Cardinal.S;
core9configs(2,5).dist = QDistance.N;
                    
core9configs(3,5).state ...
                  =   [ 0 1 0; 
                        2 3 2;
                        2 2 2 ];
core9configs(3,5).tpgcl = RCC8.PO;
core9configs(3,5).dirnl = Cardinal.S;
core9configs(3,5).dist = QDistance.C;

core9configs(4,5).state ...
                  =   [ 4 4 4; 
                        2 3 2;
                        2 2 2 ];
core9configs(4,5).tpgcl = RCC8.TPP;
core9configs(4,5).dirnl = Cardinal.S;
core9configs(4,5).dist = QDistance.C;
              
core9configs(5,5).state ...
                  =   [ 2 2 2; 
                        2 3 2;
                        2 2 2 ];                    
core9configs(5,5).tpgcl = RCC8.NTPP;
core9configs(5,5).dirnl = Cardinal.C;
core9configs(5,5).dist = QDistance.C;
                    
core9configs(6,5).state ...
                  =   [ 2 2 2; 
                        2 3 2;
                        4 4 4 ];
core9configs(6,5).tpgcl = RCC8.TPP;
core9configs(6,5).dirnl = Cardinal.N;
core9configs(6,5).dist = QDistance.C;
                    
core9configs(7,5).state ...
                  =   [ 4 4 4; 
                        2 3 2;
                        0 1 0 ];
core9configs(7,5).tpgcl = RCC8.PO;
core9configs(7,5).dirnl = Cardinal.N;
core9configs(7,5).dist = QDistance.C;
                    
core9configs(8,5).state ...
                  =   [ 0 1 0; 
                        2 3 2;
                        0 1 0 ];
core9configs(8,5).tpgcl = RCC8.PO;
core9configs(8,5).dirnl = Cardinal.C;
core9configs(8,5).dist = QDistance.C;
                    
core9configs(9,5).state ...
                  =   [ 0 1 0; 
                        2 3 2;
                        4 4 4 ];
core9configs(9,5).tpgcl = RCC8.PO;
core9configs(9,5).dirnl = Cardinal.S;
core9configs(9,5).dist = QDistance.C;
                    
core9configs(10,5).state ...
                  =   [ 2 2 2; 
                         2 3 2;
                         0 1 0 ];
core9configs(10,5).tpgcl = RCC8.PO;
core9configs(10,5).dirnl = Cardinal.N;
core9configs(10,5).dist = QDistance.C;
                    
core9configs(11,5).state ...
                  =   [ 2 2 2; 
                         4 4 4;
                         1 1 0 ];
core9configs(11,5).tpgcl = RCC8.EC;
core9configs(11,5).dirnl = Cardinal.N;
core9configs(11,5).dist = QDistance.N;
                    
core9configs(12,5).state ...
                  =   [ 2 2 2; 
                         0 0 0;
                         0 1 0 ];
core9configs(12,5).tpgcl = RCC8.DC;
core9configs(12,5).dirnl = Cardinal.N;
core9configs(12,5).dist = QDistance.A;
                
core9configs(13,5).state ...
                  =   [ 4 4 4; 
                         2 3 2;
                         4 4 4 ];
core9configs(13,5).tpgcl = RCC8.TPP;
core9configs(13,5).dirnl = Cardinal.C;
core9configs(13,5).dist = QDistance.C;
                     
                   
%%%%%%%%%%%%%%%%%%%column 6
                     
core9configs(1,6).state ...
                  =   [ 0 1 4; 
                        0 0 4;
                        2 2 4 ];
core9configs(1,6).tpgcl = RCC8.DC;
core9configs(1,6).dirnl = Cardinal.SE;
core9configs(1,6).dist = QDistance.A;
                    
core9configs(2,6).state ...
                  =   [ 0 1 4; 
                        4 4 4;
                        2 2 4 ];
core9configs(2,6).tpgcl = RCC8.EC;
core9configs(2,6).dirnl = Cardinal.SE;
core9configs(2,6).dist = QDistance.N;
                    
core9configs(3,6).state ...
                  =   [ 0 1 4; 
                        2 3 4;
                        2 2 4 ];
core9configs(3,6).tpgcl = RCC8.PO;
core9configs(3,6).dirnl = Cardinal.SE;
core9configs(3,6).dist = QDistance.C;

core9configs(4,6).state ...
                  =   [ 4 4 4; 
                        2 3 4;
                        2 2 4 ];
core9configs(4,6).tpgcl = RCC8.TPP;
core9configs(4,6).dirnl = Cardinal.SE;
core9configs(4,6).dist = QDistance.C;
              
core9configs(5,6).state ...
                  =   [ 2 2 4; 
                        2 3 4;
                        2 2 4 ];
core9configs(5,6).tpgcl = RCC8.TPP;
core9configs(5,6).dirnl = Cardinal.E;
core9configs(5,6).dist = QDistance.C;
                    
core9configs(6,6).state ...
                  =   [ 2 2 4; 
                        2 3 4;
                        4 4 4 ];
core9configs(6,6).tpgcl = RCC8.TPP;
core9configs(6,6).dirnl = Cardinal.NE;
core9configs(6,6).dist = QDistance.C;
                    
core9configs(7,6).state ...
                  =   [ 4 4 4; 
                        2 3 4;
                        0 1 4 ];
core9configs(7,6).tpgcl = RCC8.PO;
core9configs(7,6).dirnl = Cardinal.NE;
core9configs(7,6).dist = QDistance.C;
                    
core9configs(8,6).state ...
                  =   [ 0 1 4; 
                        2 3 4;
                        0 1 4 ];
core9configs(8,6).tpgcl = RCC8.PO;
core9configs(8,6).dirnl = Cardinal.E;
core9configs(8,6).dist = QDistance.C;
    
core9configs(9,6).state ...
                  =   [ 0 1 4; 
                        2 3 4;
                        4 4 4 ];
core9configs(9,6).tpgcl = RCC8.PO;
core9configs(9,6).dirnl = Cardinal.SE;
core9configs(9,6).dist = QDistance.C;
                    
core9configs(10,6).state ...
                  =   [ 2 2 4; 
                         2 3 4;
                         0 1 4 ];
core9configs(10,6).tpgcl = RCC8.PO;
core9configs(10,6).dirnl = Cardinal.NE;
core9configs(10,6).dist = QDistance.C;
                    
core9configs(11,6).state ...
                  =   [ 2 2 4; 
                         4 4 4;
                         1 1 4 ];
core9configs(11,6).tpgcl = RCC8.EC;
core9configs(11,6).dirnl = Cardinal.NE;
core9configs(11,6).dist = QDistance.N;
                    
core9configs(12,6).state ...
                  =   [ 2 2 4; 
                         0 0 4;
                         0 1 4 ];
core9configs(12,6).tpgcl = RCC8.DC;
core9configs(12,6).dirnl = Cardinal.NE;
core9configs(12,6).dist = QDistance.A;
                
core9configs(13,6).state ...
                  =   [ 4 4 4; 
                         2 3 4;
                         4 4 4 ];
core9configs(13,6).tpgcl = RCC8.TPP;
core9configs(13,6).dirnl = Cardinal.E;
core9configs(13,6).dist = QDistance.C;

%%%%%%%%%%%%%%%%%%%column 7
                     
core9configs(1,7).state ...
                  =   [ 4 1 1; 
                        4 0 0;
                        4 2 0 ];
core9configs(1,7).tpgcl = RCC8.DC;
core9configs(1,7).dirnl = Cardinal.SE;
core9configs(1,7).dist = QDistance.A;
                    
core9configs(2,7).state ...
                  =   [ 4 1 1; 
                        4 4 4;
                        4 2 0 ];
core9configs(2,7).tpgcl = RCC8.EC;
core9configs(2,7).dirnl = Cardinal.SE;
core9configs(2,7).dist = QDistance.N;
                    
core9configs(3,7).state ...
                  =   [ 4 1 1; 
                        4 3 1;
                        4 2 0 ];
core9configs(3,7).tpgcl = RCC8.PO;
core9configs(3,7).dirnl = Cardinal.SE;
core9configs(3,7).dist = QDistance.C;

core9configs(4,7).state ...
                  =   [ 4 4 4; 
                        4 3 1;
                        4 2 0 ];
core9configs(4,7).tpgcl = RCC8.PO;
core9configs(4,7).dirnl = Cardinal.SE;
core9configs(4,7).dist = QDistance.C;
              
core9configs(5,7).state ...
                  =   [ 4 2 0; 
                        4 3 1;
                        4 2 0 ];
core9configs(5,7).tpgcl = RCC8.PO;
core9configs(5,7).dirnl = Cardinal.E;
core9configs(5,7).dist = QDistance.C;
                    
core9configs(6,7).state ...
                  =   [ 4 2 0; 
                        4 3 1;
                        4 4 4 ];
core9configs(6,7).tpgcl = RCC8.PO;
core9configs(6,7).dirnl = Cardinal.NE;
core9configs(6,7).dist = QDistance.C;
                    
core9configs(7,7).state ...
                  =   [ 4 4 4; 
                        4 3 1;
                        4 1 1 ];
core9configs(7,7).tpgcl = RCC8.TPPI;
core9configs(7,7).dirnl = Cardinal.NE;
core9configs(7,7).dist = QDistance.C;
                    
core9configs(8,7).state ...
                  =   [ 4 1 1; 
                        4 3 1;
                        4 1 1 ];
core9configs(8,7).tpgcl = RCC8.TPPI;
core9configs(8,7).dirnl = Cardinal.E;
core9configs(8,7).dist = QDistance.C;
                    
core9configs(9,7).state ...
                  =   [ 4 1 1; 
                        4 3 1;
                        4 4 4 ];
core9configs(9,7).tpgcl = RCC8.TPPI;
core9configs(9,7).dirnl = Cardinal.SE;
core9configs(9,7).dist = QDistance.C;
                    
core9configs(10,7).state ...
                  =   [ 4 2 0; 
                         4 3 1;
                         4 1 1 ];
core9configs(10,7).tpgcl = RCC8.PO;
core9configs(10,7).dirnl = Cardinal.NE;
core9configs(10,7).dist = QDistance.C;
                    
core9configs(11,7).state ...
                  =   [ 4 2 0; 
                         4 4 4;
                         4 1 1 ];
core9configs(11,7).tpgcl = RCC8.EC;
core9configs(11,7).dirnl = Cardinal.NE;
core9configs(11,7).dist = QDistance.N;
                    
core9configs(12,7).state ...
                  =   [ 4 2 0; 
                         4 0 0;
                         4 1 1 ];
core9configs(12,7).tpgcl = RCC8.DC;
core9configs(12,7).dirnl = Cardinal.NE;
core9configs(12,7).dist = QDistance.A;
                
core9configs(13,7).state ...
                  =   [ 4 4 4; 
                         4 3 1;
                         4 4 4 ];
core9configs(13,7).tpgcl = RCC8.TPPI;
core9configs(13,7).dirnl = Cardinal.E;
core9configs(13,7).dist = QDistance.C;
                     
%%%%%%%%%%%%%%%%%%%column 8
                     
core9configs(1,8).state ...
                  =   [ 1 1 1; 
                        0 0 0;
                        0 2 0 ];
core9configs(1,8).tpgcl = RCC8.DC; 
core9configs(1,8).dirnl = Cardinal.S;
core9configs(1,8).dist = QDistance.A;
                    
core9configs(2,8).state ...
                  =   [ 1 1 1; 
                        4 4 4;
                        0 2 0 ];
core9configs(2,8).tpgcl = RCC8.EC; 
core9configs(2,8).dirnl = Cardinal.S;
core9configs(2,8).dist = QDistance.N;
                    
core9configs(3,8).state ...
                  =   [ 1 1 1; 
                        1 3 1;
                        0 2 0 ];
core9configs(3,8).tpgcl = RCC8.PO; 
core9configs(3,8).dirnl = Cardinal.S;
core9configs(3,8).dist = QDistance.N;

core9configs(4,8).state ...
                  =   [ 4 4 4; 
                        1 3 1;
                        0 2 0 ];
core9configs(4,8).tpgcl = RCC8.PO; 
core9configs(4,8).dirnl = Cardinal.S;
core9configs(4,8).dist = QDistance.C;
              
core9configs(5,8).state ...
                  =   [ 0 2 0; 
                        1 3 1;
                        0 2 0 ];
core9configs(5,8).tpgcl = RCC8.PO; 
core9configs(5,8).dirnl = Cardinal.C;
core9configs(5,8).dist = QDistance.C;
                    
core9configs(6,8).state ...
                  =   [ 0 2 0; 
                        1 3 1;
                        4 4 4 ];
core9configs(6,8).tpgcl = RCC8.PO; 
core9configs(6,8).dirnl = Cardinal.N;
core9configs(6,8).dist = QDistance.C;
                    
core9configs(7,8).state ...
                  =   [ 4 4 4; 
                        1 3 1;
                        1 1 1 ];
core9configs(7,8).tpgcl = RCC8.TPPI;
core9configs(7,8).dirnl = Cardinal.N;
core9configs(7,8).dist = QDistance.C;
                    
core9configs(8,8).state ...
                  =   [ 1 1 1; 
                        1 3 1;
                        1 1 1 ];
core9configs(8,8).tpgcl = RCC8.NTPPI;
core9configs(8,8).dirnl = Cardinal.C;
core9configs(8,8).dist = QDistance.C;
                    
core9configs(9,8).state ...
                  =   [ 1 1 1; 
                        1 3 1;
                        4 4 4 ];
core9configs(9,8).tpgcl = RCC8.TPPI;
core9configs(9,8).dirnl = Cardinal.S;
core9configs(9,8).dist = QDistance.C;
                    
core9configs(10,8).state ...
                  =   [ 0 2 0; 
                         1 3 1;
                         1 1 1 ];
core9configs(10,8).tpgcl = RCC8.PO;
core9configs(10,8).dirnl = Cardinal.N;
core9configs(10,8).dist = QDistance.C;
                    
core9configs(11,8).state ...
                  =   [ 0 2 0; 
                         4 4 4;
                         1 1 1 ];
core9configs(11,8).tpgcl = RCC8.EC;
core9configs(11,8).dirnl = Cardinal.N;
core9configs(11,8).dist = QDistance.N;
                    
core9configs(12,8).state ...
                  =   [ 0 2 0; 
                         0 0 0;
                         1 1 1 ];
core9configs(12,8).tpgcl = RCC8.DC;
core9configs(12,8).dirnl = Cardinal.N;
core9configs(12,8).dist = QDistance.A;
                
core9configs(13,8).state ...
                  =   [ 4 4 4; 
                         1 3 1;
                         4 4 4 ];
core9configs(13,8).tpgcl = RCC8.TPPI;
core9configs(13,8).dirnl = Cardinal.C;
core9configs(13,8).dist = QDistance.C;
                     
%%%%%%%%%%%%%%%%%%%column 9
                     
core9configs(1,9).state ...
                  =   [ 1 1 4; 
                        0 0 4;
                        0 2 4 ];
core9configs(1,9).tpgcl = RCC8.DC;
core9configs(1,9).dirnl = Cardinal.SW;
core9configs(1,9).dist = QDistance.A;
                    
core9configs(2,9).state ...
                  =   [ 1 1 4; 
                        4 4 4;
                        0 2 4 ];
core9configs(2,9).tpgcl = RCC8.EC;
core9configs(2,9).dirnl = Cardinal.SW;
core9configs(2,9).dist = QDistance.N;
                    
core9configs(3,9).state ...
                  =   [ 1 1 4; 
                        1 3 4;
                        0 2 4 ];
core9configs(3,9).tpgcl = RCC8.PO;
core9configs(3,9).dirnl = Cardinal.SW;
core9configs(3,9).dist = QDistance.C;

core9configs(4,9).state ...
                  =   [ 4 4 4; 
                        1 3 4;
                        0 2 4 ];
core9configs(4,9).tpgcl = RCC8.PO;
core9configs(4,9).dirnl = Cardinal.SW;
core9configs(4,9).dist = QDistance.C;
              
core9configs(5,9).state ...
                  =   [ 0 2 4; 
                        1 3 4;
                        0 2 4 ];
core9configs(5,9).tpgcl = RCC8.PO;
core9configs(5,9).dirnl = Cardinal.W;
core9configs(5,9).dist = QDistance.C;
                    
core9configs(6,9).state ...
                  =   [ 0 2 4; 
                        1 3 4;
                        4 4 4 ];
core9configs(6,9).tpgcl = RCC8.PO;
core9configs(6,9).dirnl = Cardinal.NW;
core9configs(6,9).dist = QDistance.C;
                    
core9configs(7,9).state ...
                  =   [ 4 4 4; 
                        1 3 4;
                        1 1 4 ];
core9configs(7,9).tpgcl = RCC8.TPPI;
core9configs(7,9).dirnl = Cardinal.NW;
core9configs(7,9).dist = QDistance.C;
                    
core9configs(8,9).state ...
                  =   [ 1 1 4; 
                        1 3 4;
                        1 1 4 ];
core9configs(8,9).tpgcl = RCC8.TPPI;
core9configs(8,9).dirnl = Cardinal.W;
core9configs(8,9).dist = QDistance.C;
                    
core9configs(9,9).state ...
                  =   [ 1 1 4; 
                        1 3 4;
                        4 4 4 ];
core9configs(9,9).tpgcl = RCC8.TPPI;
core9configs(9,9).dirnl = Cardinal.SW;
core9configs(9,9).dist = QDistance.C;
                    
core9configs(10,9).state ...
                  =   [ 0 2 4; 
                         1 3 4;
                         1 1 4 ];
core9configs(10,9).tpgcl = RCC8.PO;
core9configs(10,9).dirnl = Cardinal.NW;
core9configs(10,9).dist = QDistance.C;
                    
core9configs(11,9).state ...
                  =   [ 0 2 4; 
                         4 4 4;
                         1 1 4 ];
core9configs(11,9).tpgcl = RCC8.EC;
core9configs(11,9).dirnl = Cardinal.NW;
core9configs(11,9).dist = QDistance.N;
                    
core9configs(12,9).state ...
                  =   [ 0 2 4; 
                         0 0 4;
                         1 1 4];
core9configs(12,9).tpgcl = RCC8.DC;
core9configs(12,9).dirnl = Cardinal.NW;
core9configs(12,9).dist = QDistance.A;
                
core9configs(13,9).state ...
                  =   [ 4 4 4; 
                         1 3 4;
                         4 4 4 ];
core9configs(13,9).tpgcl = RCC8.TPPI;
core9configs(13,9).dirnl = Cardinal.W;
core9configs(13,9).dist = QDistance.C;
                     
                     
%%%%%%%%%%%%%%%%%%%column 10
                     
core9configs(1,10).state ...
                  =   [ 0 1 1; 
                         0 0 0;
                         2 2 0 ];
core9configs(1,10).tpgcl = RCC8.DC;
core9configs(1,10).dirnl = Cardinal.SE;
core9configs(1,10).dist = QDistance.A;
                    
core9configs(2,10).state ...
                  =   [ 0 1 1; 
                         4 4 4;
                         2 2 0 ];
core9configs(2,10).tpgcl = RCC8.EC;
core9configs(2,10).dirnl = Cardinal.SE;
core9configs(2,10).dist = QDistance.N;
                    
core9configs(3,10).state ...
                  =   [ 0 1 1; 
                         2 3 1;
                         2 2 0 ];
core9configs(3,10).tpgcl = RCC8.PO;
core9configs(3,10).dirnl = Cardinal.SE;
core9configs(3,10).dist = QDistance.C;
 
core9configs(4,10).state ...
                  =   [ 4 4 4; 
                         2 3 1;
                         2 2 0 ];
core9configs(4,10).tpgcl = RCC8.PO;
core9configs(4,10).dirnl = Cardinal.SE;
core9configs(4,10).dist = QDistance.C;
              
core9configs(5,10).state ...
                  =   [ 2 2 0; 
                         2 3 1;
                         2 2 0 ];
core9configs(5,10).tpgcl = RCC8.PO;
core9configs(5,10).dirnl = Cardinal.E;
core9configs(5,10).dist = QDistance.C;
                    
core9configs(6,10).state ...
                  =   [ 2 2 0; 
                         2 3 1;
                         4 4 4 ];
core9configs(6,10).tpgcl = RCC8.PO;
core9configs(6,10).dirnl = Cardinal.NE;
core9configs(6,10).dist = QDistance.C;
                    
core9configs(7,10).state ...
                  =   [ 4 4 4; 
                         2 3 1;
                         0 1 1 ];
core9configs(7,10).tpgcl = RCC8.PO;
core9configs(7,10).dirnl = Cardinal.NE;
core9configs(7,10).dist = QDistance.C;
                    
core9configs(8,10).state ...
                   =   [ 0 1 1; 
                         2 3 1;
                         0 1 1 ];
core9configs(8,10).tpgcl = RCC8.PO;
core9configs(8,10).dirnl = Cardinal.E;
core9configs(8,10).dist = QDistance.C;
                    
core9configs(9,10).state ...
                   =   [ 0 1 1; 
                         2 3 1;
                         4 4 4 ];
core9configs(9,10).tpgcl = RCC8.PO;
core9configs(9,10).dirnl = Cardinal.SE;
core9configs(9,10).dist = QDistance.C;
                    
core9configs(10,10).state ...
                    =   [ 2 2 0; 
                          2 3 1;
                          0 1 1 ];
core9configs(10,10).tpgcl = RCC8.PO;
core9configs(10,10).dirnl = Cardinal.NE;
core9configs(10,10).dist = QDistance.C;
                    
core9configs(11,10).state ...
                    =   [ 2 2 0; 
                          4 4 4;
                          0 1 1 ];
core9configs(11,10).tpgcl = RCC8.EC;
core9configs(11,10).dirnl = Cardinal.NE;
core9configs(11,10).dist = QDistance.N;
                    
core9configs(12,10).state ...
                    =   [ 2 2 0; 
                          0 0 0;
                          0 1 1];
core9configs(12,10).tpgcl = RCC8.DC;
core9configs(12,10).dirnl = Cardinal.NE;
core9configs(12,10).dist = QDistance.A;
                
core9configs(13,10).state ...
                    =   [ 4 4 4; 
                          2 3 1;
                          4 4 4 ];
core9configs(13,10).tpgcl = RCC8.PO;
core9configs(13,10).dirnl = Cardinal.E;
core9configs(13,10).dist = QDistance.C;
                      
                      
%%%%%%%%%%%%%%%%%%%column 11
                     
core9configs(1,11).state ...
                    =  [ 0 4 1; 
                         0 4 0;
                         2 4 0 ];
core9configs(1,11).tpgcl = RCC8.DC;
core9configs(1,11).dirnl = Cardinal.SE;
core9configs(1,10).dist = QDistance.A;
                    
core9configs(2,11).state ...
                    =  [ 0 4 1; 
                         4 4 4;
                         2 4 0 ];
core9configs(2,11).tpgcl = RCC8.EC;
core9configs(2,11).dirnl = Cardinal.SE;
core9configs(2,11).dist = QDistance.N;
                    
core9configs(3,11).state ...
                    =  [ 0 4 1; 
                         2 4 1;
                         2 4 0 ];
core9configs(3,11).tpgcl = RCC8.EC;
core9configs(3,11).dirnl = Cardinal.SE;
core9configs(3,11).dist = QDistance.N;
 
core9configs(4,11).state ...
                    =  [ 4 4 4; 
                         2 4 1;
                         2 4 0 ];
core9configs(4,11).tpgcl = RCC8.EC;
core9configs(4,11).dirnl = Cardinal.SE;
core9configs(4,11).dist = QDistance.N;
              
core9configs(5,11).state ...
                    =  [ 2 4 0; 
                         2 4 1;
                         2 4 0 ];
core9configs(5,11).tpgcl = RCC8.EC;
core9configs(5,11).dirnl = Cardinal.E;
core9configs(5,11).dist = QDistance.N;
                    
core9configs(6,11).state ...
                    =  [ 2 4 0; 
                         2 4 1;
                         4 4 4 ];
core9configs(6,11).tpgcl = RCC8.EC;
core9configs(6,11).dirnl = Cardinal.NE;
core9configs(6,11).dist = QDistance.N;
                    
core9configs(7,11).state ...
                    =  [ 4 4 4; 
                         2 4 1;
                         0 4 1 ];
core9configs(7,11).tpgcl = RCC8.EC;
core9configs(7,11).dirnl = Cardinal.NE;
core9configs(7,11).dist = QDistance.N;
                    
core9configs(8,11).state ...
                    =  [ 0 4 1; 
                         2 4 1;
                         0 4 1 ];
core9configs(8,11).tpgcl = RCC8.EC;
core9configs(8,11).dirnl = Cardinal.E;
core9configs(8,11).dist = QDistance.N;
                    
core9configs(9,11).state ...
                    =  [ 0 4 1; 
                         2 4 1;
                         4 4 4 ];
core9configs(9,11).tpgcl = RCC8.EC;
core9configs(9,11).dirnl = Cardinal.SE;
core9configs(9,11).dist = QDistance.N;
                    
core9configs(10,11).state ...
                    =   [ 2 4 0; 
                          2 4 1;
                          0 4 1 ];
core9configs(10,11).tpgcl = RCC8.EC;
core9configs(10,11).dirnl = Cardinal.NE;
core9configs(10,11).dist = QDistance.N;
                    
core9configs(11,11).state ...
                    =   [ 2 4 0; 
                          4 4 4;
                          0 4 1 ];
core9configs(11,11).tpgcl = RCC8.EC;
core9configs(11,11).dirnl = Cardinal.NE;
core9configs(11,11).dist = QDistance.N;
                    
core9configs(12,11).state ...
                    =   [ 2 4 0; 
                          0 4 0;
                          0 4 1];
core9configs(12,11).tpgcl = RCC8.DC;
core9configs(12,11).dirnl = Cardinal.NE;
core9configs(12,11).dist = QDistance.A;
                
core9configs(13,11).state ...
                    =   [ 4 4 4; 
                          2 4 1;
                          4 4 4 ];
core9configs(13,11).tpgcl = RCC8.EC;
core9configs(13,11).dirnl = Cardinal.E;
core9configs(13,11).dist = QDistance.N;
                      
%%%%%%%%%%%%%%%%%%%column 12
                     
core9configs(1,12).state ...
                    =  [ 0 0 1; 
                         0 0 0;
                         2 0 0 ];
core9configs(1,12).tpgcl = RCC8.DC;
core9configs(1,12).dirnl = Cardinal.SE;
core9configs(1,12).dist = QDistance.A;
                    
core9configs(2,12).state ...
                    =  [ 0 0 1; 
                         4 4 4;
                         2 0 0 ];
core9configs(2,12).tpgcl = RCC8.DC;
core9configs(2,12).dirnl = Cardinal.SE;
core9configs(2,12).dist = QDistance.A;
                    
core9configs(3,12).state ...
                    =  [ 0 0 1; 
                         2 0 1;
                         2 0 0 ];
core9configs(3,12).tpgcl = RCC8.DC;
core9configs(3,12).dirnl = Cardinal.SE;
core9configs(3,12).dist = QDistance.A;
 
core9configs(4,12).state ...
                    =  [ 4 4 4; 
                         2 0 1;
                         2 0 0 ];
core9configs(4,12).tpgcl = RCC8.DC;
core9configs(4,12).dirnl = Cardinal.SE;
core9configs(4,12).dist = QDistance.A;
              
core9configs(5,12).state ...
                    =  [ 2 0 0; 
                         2 0 1;
                         2 0 0 ];
core9configs(5,12).tpgcl = RCC8.DC;
core9configs(5,12).dirnl = Cardinal.E;
core9configs(5,12).dist = QDistance.A;
                    
core9configs(6,12).state ...
                    =  [ 2 0 0; 
                         2 0 1;
                         4 4 4 ];
core9configs(6,12).tpgcl = RCC8.DC;
core9configs(6,12).dirnl = Cardinal.NE;
core9configs(6,12).dist = QDistance.A;
                    
core9configs(7,12).state ...
                    =  [ 4 4 4; 
                         2 0 1;
                         0 0 1 ];
core9configs(7,12).tpgcl = RCC8.DC;
core9configs(7,12).dirnl = Cardinal.NE;
core9configs(7,12).dist = QDistance.A;
                    
core9configs(8,12).state ...
                    =  [ 0 0 1; 
                         2 0 1;
                         0 0 1 ];
core9configs(8,12).tpgcl = RCC8.DC;
core9configs(8,12).dirnl = Cardinal.E;
core9configs(8,12).dist = QDistance.A;
                    
core9configs(9,12).state ...
                    =  [ 0 0 1; 
                         2 0 1;
                         4 4 4 ];
core9configs(9,12).tpgcl = RCC8.DC;
core9configs(9,12).dirnl = Cardinal.SE;
core9configs(9,12).dist = QDistance.A;
                    
core9configs(10,12).state ...
                    =   [ 2 0 0; 
                          2 0 1;
                          0 0 1 ];
core9configs(10,12).tpgcl = RCC8.DC;
core9configs(10,12).dirnl = Cardinal.NE;
core9configs(10,12).dist = QDistance.A;
                    
core9configs(11,12).state ...
                    =   [ 2 0 0; 
                          4 4 4;
                          0 0 1 ];
core9configs(11,12).tpgcl = RCC8.DC;
core9configs(11,12).dirnl = Cardinal.NE;
core9configs(11,12).dist = QDistance.A;
                    
core9configs(12,12).state ...
                    =   [ 2 0 0; 
                          0 0 0;
                          0 0 1];
core9configs(12,12).tpgcl = RCC8.DC;
core9configs(12,12).dirnl = Cardinal.NE;
core9configs(12,12).dist = QDistance.A;
                
core9configs(13,12).state ...
                    =   [ 4 4 4; 
                          2 0 1;
                          4 4 4 ];
core9configs(13,12).tpgcl = RCC8.DC;
core9configs(13,12).dirnl = Cardinal.E;
core9configs(13,12).dist = QDistance.A;
                      
%%%%%%%%%%%%%%%%%%%column 13
                     
core9configs(1,13).state ...
                    =  [ 4 1 4; 
                         4 0 4;
                         4 2 4 ];
core9configs(1,13).tpgcl = RCC8.DC;
core9configs(1,13).dirnl = Cardinal.N;
core9configs(1,13).dist = QDistance.A;
                    
core9configs(2,13).state ...
                    =  [ 4 1 4; 
                         4 4 4;
                         4 2 4 ];
core9configs(2,13).tpgcl = RCC8.EC;
core9configs(2,13).dirnl = Cardinal.N;
core9configs(2,13).dist = QDistance.N;
                    
core9configs(3,13).state ...
                    =  [ 4 1 4; 
                         4 3 4;
                         4 2 4 ];
core9configs(3,13).tpgcl = RCC8.PO;
core9configs(3,13).dirnl = Cardinal.N;
core9configs(3,13).dist = QDistance.C;

core9configs(4,13).state ...
                    =  [ 4 4 4; 
                         4 3 4;
                         4 2 4 ];
core9configs(4,13).tpgcl = RCC8.TPP;
core9configs(4,13).dirnl = Cardinal.S;
core9configs(4,13).dist = QDistance.C;
              
core9configs(5,13).state ...
                    =  [ 4 2 4; 
                         4 3 4;
                         4 2 4 ];
core9configs(5,13).tpgcl = RCC8.TPP;
core9configs(5,13).dirnl = Cardinal.C;
core9configs(5,13).dist = QDistance.C;
                    
core9configs(6,13).state ...
                    =  [ 4 2 4; 
                         4 3 4;
                         4 4 4 ];
core9configs(6,13).tpgcl = RCC8.TPP;
core9configs(6,13).dirnl = Cardinal.N;
core9configs(6,13).dist = QDistance.C;
                    
core9configs(7,13).state ...
                    =  [ 4 4 4; 
                         4 3 4;
                         4 1 4 ];
core9configs(7,13).tpgcl = RCC8.TPP;
core9configs(7,13).dirnl = Cardinal.N;
core9configs(7,13).dist = QDistance.C;
                     
core9configs(8,13).state ...
                    =  [ 4 1 4; 
                         4 3 4;
                         4 1 4 ];
core9configs(8,13).tpgcl = RCC8.TPPI;
core9configs(8,13).dirnl = Cardinal.C;
core9configs(8,13).dist = QDistance.C;
                    
core9configs(9,13).state ...
                    =  [ 4 1 4; 
                         4 3 4;
                         4 4 4 ];
core9configs(9,13).tpgcl = RCC8.NTPPI;
core9configs(9,13).dirnl = Cardinal.S;
core9configs(9,13).dist = QDistance.C;
                    
core9configs(10,13).state ...
                    =   [ 4 2 4; 
                          4 3 4;
                          4 1 4 ];
core9configs(10,13).tpgcl = RCC8.PO;
core9configs(10,13).dirnl = Cardinal.N;
core9configs(10,13).dist = QDistance.C;
                    
core9configs(11,13).state ...
                    =   [ 4 2 4; 
                          4 4 4;
                          4 1 4 ];
core9configs(11,13).tpgcl = RCC8.EC;  
core9configs(11,13).dirnl = Cardinal.N;
core9configs(11,13).dist = QDistance.N;
                     
core9configs(12,13).state ...
                    =   [ 4 2 4; 
                          4 0 4;
                          4 1 4 ];
core9configs(12,13).tpgcl = RCC8.DC;  
core9configs(12,13).dirnl = Cardinal.N;
core9configs(12,13).dist = QDistance.A;
                
core9configs(13,13).state ...
                    =   [ 4 4 4; 
                          4 3 4;
                          4 4 4 ];
core9configs(13,13).tpgcl = RCC8.EQ;  
core9configs(13,13).dirnl = Cardinal.C;
core9configs(13,13).dist = QDistance.C;
                      
                      
config = core9configs(row,col).state;
topr = core9configs(row,col).tpgcl;
dir = core9configs(row,col).dirnl;
dist = core9configs(row,col).dist;