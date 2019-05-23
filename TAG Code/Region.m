classdef Region
    properties
        xint
        yint
    end
    methods
        function r = Region(xy)         %xy is of the form [xmin ymin xmax ymax]
            r.xint = [xy(1) xy(3)];
            r.yint = [xy(2) xy(4)];
        end
        
        function tf = isValidRegion(r)
            tf = 0;
            if max(r.xint) ~= 0 && max(r.yint) ~= 0
                tf = 1;
            end
        end
        
        function otf = overlaps(r1, r2)
            otf = 0;
            
            if (((r1.xint(1)<=r2.xint(1) && r1.xint(2)>r2.xint(1)) || (r1.xint(1)>=r2.xint(1) && r1.xint(1)<r2.xint(2)))...
                && ((r1.yint(1)<=r2.yint(1) && r1.yint(2)>r2.yint(1)) || (r1.yint(1)>=r2.yint(1) && r1.yint(1)<r2.yint(2))))
                otf = 1;
            end
            
        end
    end
end