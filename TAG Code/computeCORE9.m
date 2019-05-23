function [core9state, topr, dir, dis] = computeCORE9(A, B)    %A and B are rectangles of the form [xmin, ymin, xmax, ymax]
%global core9config
    %topo = RCC8.DC;
    %dir = Cardinal.B;
    
    core9state = zeros(3,3);    %state values can 0,1,2,3,4
                                %0 -> neither A nor B
                                %1 -> A
                                %2 -> B
                                %3 -> both A and B
                                %4 -> fi, i.e. does not exist
    if A(3)<B(1)                %A1<B1, A1<B3, A3<B3
        col = 1;
    elseif A(3)==B(1)           %A1<B1, A1<B3, A3<B3
        col = 2;
    else        %A(3)>B(1)
        if A(1)<B(1)            %A1<B3
            if A(3)<B(3)
                col = 3;
            elseif A(3)>B(3)
                col = 8;
            elseif A(3)==B(3)
                col = 9;
            end
        elseif A(1)==B(1)       %A1<B3
            if A(3)<B(3)
                col = 4;
            elseif A(3)>B(3)
                col = 7;
            elseif A(3)==B(3)
                col = 13;
            end
        else    %A1>B1
            if A(1)<B(3)
                if A(3)<B(3)
                    col = 5;
                elseif A(3)==B(3)
                    col = 6;
                else 
                    col = 10;
                end
            elseif A(1)==B(3)
                col = 11;
            elseif A(1)>B(3)
                col = 12;
            end
        end
    end
    
    if A(4)<B(2)                %A2<B2, A2<B4, A2<B4
        row = 1;
    elseif A(4)==B(2)           %A2<B2, A2<B4, A2<B4
        row = 2;
    else        %A(4)>B(2)
        if A(2)<B(2)            %A2<B4
            if A(4)<B(4)
                row = 3;
            elseif A(4)>B(4)
                row = 8;
            elseif A(4)==B(4)
                row = 9;
            end
        elseif A(2)==B(2)       %A2<B4
            if A(4)<B(4)
                row = 4;
            elseif A(4)>B(4)
                row = 7;
            elseif A(4)==B(4)
                row = 13;
            end
        else    %A2>B2
            if A(2)<B(4)
                if A(4)<B(4)
                    row = 5;
                elseif A(4)==B(4)
                    row = 6;
                else 
                    row = 10;
                end
            elseif A(2)==B(4)
                row = 11;
            elseif A(2)>B(4)
                row = 12;
            end
        end
    end
    
    [core9state, topr, dir, dis] = core9config(row,col);
    %disp('Computed core9 is:');
    %disp(core9state);
end