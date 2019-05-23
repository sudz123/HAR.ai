function [core9state, topr, dir, dis] = computeCORE9_rcc5(A, B)    %A and B are Regions
                                                 %replace A(1) by A.xint(1)
                                                 %A(2) by A.yint(1) A(3) by
                                                 %A.xint(2) and A(4) by
                                                 %A.yint(2)
                                                                   
                                                                   
%global core9config
    %topo = RCC8.DC;
    %dir = Cardinal.B;
    
    core9state = zeros(3,3);    %state values can 0,1,2,3,4
                                %0 -> neither A nor B
                                %1 -> A
                                %2 -> B
                                %3 -> both A and B
                                %4 -> fi, i.e. does not exist
    if A.xint(2)<B.xint(1)                %A1<B1, A1<B3, A3<B3
        col = 1;
    elseif A.xint(2)==B.xint(1)           %A1<B1, A1<B3, A3<B3
        col = 2;
    else        %A.xint(2)>B.xint(1)
        if A.xint(1)<B.xint(1)            %A1<B3
            if A.xint(2)<B.xint(2)
                col = 3;
            elseif A.xint(2)>B.xint(2)
                col = 8;
            elseif A.xint(2)==B.xint(2)
                col = 9;
            end
        elseif A.xint(1)==B.xint(1)       %A1<B3
            if A.xint(2)<B.xint(2)
                col = 4;
            elseif A.xint(2)>B.xint(2)
                col = 7;
            elseif A.xint(2)==B.xint(2)
                col = 13;
            end
        else    %A1>B1
            if A.xint(1)<B.xint(2)
                if A.xint(2)<B.xint(2)
                    col = 5;
                elseif A.xint(2)==B.xint(2)
                    col = 6;
                else 
                    col = 10;
                end
            elseif A.xint(1)==B.xint(2)
                col = 11;
            elseif A.xint(1)>B.xint(2)
                col = 12;
            end
        end
    end
    
    if A.yint(2)<B.yint(1)                %A2<B2, A2<B4, A2<B4
        row = 1;
    elseif A.yint(2)==B.yint(1)           %A2<B2, A2<B4, A2<B4
        row = 2;
    else        %A.yint(2)>B.yint(1)
        if A.yint(1)<B.yint(1)            %A2<B4
            if A.yint(2)<B.yint(2)
                row = 3;
            elseif A.yint(2)>B.yint(2)
                row = 8;
            elseif A.yint(2)==B.yint(2)
                row = 9;
            end
        elseif A.yint(1)==B.yint(1)       %A2<B4
            if A.yint(2)<B.yint(2)
                row = 4;
            elseif A.yint(2)>B.yint(2)
                row = 7;
            elseif A.yint(2)==B.yint(2)
                row = 13;
            end
        else    %A2>B2
            if A.yint(1)<B.yint(2)
                if A.yint(2)<B.yint(2)
                    row = 5;
                elseif A.yint(2)==B.yint(2)
                    row = 6;
                else 
                    row = 10;
                end
            elseif A.yint(1)==B.yint(2)
                row = 11;
            elseif A.yint(1)>B.yint(2)
                row = 12;
            end
        end
    end
    
    [core9state, topr, dir, dis] = core9config_rcc5(row,col);
    %disp('Computed core9 is:');
    %disp(core9state);
end