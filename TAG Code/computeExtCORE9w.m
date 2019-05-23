function [gtopr, gdir, gdis] = computeExtCORE9w(ER)
    %s = size(extrelmatrix);
    rcc = zeros(5);
    %cardnl = zeros(9);
    dir = zeros(4);
    qdist = zeros(4);
    
    for i=1:11
        for j=1:11
            %t = cell(1,1);
            %d = cell(1,1);
            %t = extrelmatrix{i,j}{1,1};
            %d = extrelmatrix{i,j}{1,2};
            
            
            if ~strcmp(ER.rel{i,j}, 'X-X-X')

                if ER.rel3w{i,j}.topr == RCC5.DR %t==RCC8.DC
                    rcc(1) = 1;
                elseif ER.rel3w{i,j}.topr == RCC5.PO %t==RCC8.PO
                    rcc(2) = 1;
                elseif ER.rel3w{i,j}.topr == RCC5.EQ %t==RCC8.EQ
                    rcc(3) = 1;
                elseif ER.rel3w{i,j}.topr == RCC5.PP %t==RCC8.TPP
                    rcc(4) = 1;
                elseif ER.rel3w{i,j}.topr == RCC5.PPI %t==RCC8.TPPI
                    rcc(5) = 1;
                end

                if ER.rel3w{i,j}.dirr==Cardinal.N || ER.rel3w{i,j}.dirr==Cardinal.NE || ER.rel3w{i,j}.dirr==Cardinal.NW
                    dir(1) = 1;%d == Cardinal.N
                elseif ER.rel3w{i,j}.dirr==Cardinal.E || ER.rel3w{i,j}.dirr==Cardinal.NE || ER.rel3w{i,j}.dirr==Cardinal.SE
                    dir(2) = 1;%d == Cardinal.E
                elseif ER.rel3w{i,j}.dirr==Cardinal.S || ER.rel3w{i,j}.dirr==Cardinal.SE || ER.rel3w{i,j}.dirr==Cardinal.SW
                    dir(3) = 1;%d == Cardinal.S
                elseif ER.rel3w{i,j}.dirr==Cardinal.W || ER.rel3w{i,j}.dirr==Cardinal.NW || ER.rel3w{i,j}.dirr==Cardinal.SW
                    dir(4) = 1;%d == Cardinal.W
                end
                
                if ER.rel3w{i,j}.disr==QDistance.A %t==RCC8.DC
                    qdist(1) = 1;
                elseif ER.rel3w{i,j}.disr==QDistance.N %t==RCC8.PO
                    qdist(2) = 1;
                elseif ER.rel3w{i,j}.disr==QDistance.Cl %t==RCC8.EQ
                    qdist(3) = 1;
                elseif ER.rel3w{i,j}.disr==QDistance.C %t==RCC8.TPP
                    qdist(4) = 1;
                end
                
            end
        end
    end
    
    
    %% computing topological relations
    if rcc(1) && ~rcc(2) && ~rcc(3) && ~rcc(4) && ~rcc(5)
        gtopr = RCC5.DR;
    elseif ~rcc(1) && ~rcc(2) && rcc(3) && ~rcc(4) && ~rcc(5)
        gtopr = RCC5.EQ;
    elseif ~rcc(1) && ~rcc(2) && rcc(4) && ~rcc(5)
        gtopr = RCC5.PP;
    elseif ~rcc(1) && ~rcc(2) && ~rcc(4) && rcc(5)
        gtopr = RCC5.PPI;
    else
        gtopr = RCC5.PO;
    end
     %% computing direction relations %% general direction relation is obtained from whole MBR
     if dir(1) && ~dir(3) && ((~dir(2) && ~dir(4)) || (dir(2) && dir(4)))
         gdir = Cardinal.N;
     elseif ~dir(1) && dir(3) && ((~dir(2) && ~dir(4)) || (dir(2) && dir(4)))
         gdir = Cardinal.S;
     elseif ~dir(2) && dir(4) && ((~dir(1) && ~dir(3)) || (dir(1) && dir(3)))
         gdir = Cardinal.W;
     elseif dir(2) && ~dir(4) && ((~dir(1) && ~dir(3)) || (dir(1) && dir(3)))
         gdir = Cardinal.E;
     elseif dir(1) && dir(2) && ~dir(3) && ~dir(4)
         gdir = Cardinal.NE;
     elseif ~dir(1) && dir(2) && dir(3) && ~dir(4)
         gdir = Cardinal.SE;
     elseif ~dir(1) && ~dir(2) && dir(3) && dir(4)
         gdir = Cardinal.SW;
     elseif dir(1) && ~dir(2) && ~dir(3) && dir(4)
         gdir = Cardinal.NW;
     else
         gdir = Cardinal.C;
     end
    %% computing distance relations
    if qdist(4)
        gdis = QDistance.C;
    elseif ~qdist(4) && qdist(3)
        gdis = QDistance.Cl;
    elseif ~qdist(4) && ~qdist(3) && qdist(2)
        gdis = QDistance.N;
    else
        gdis = QDistance.A;
    end
end