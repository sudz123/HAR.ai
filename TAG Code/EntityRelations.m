classdef EntityRelations
    properties
        m = 0;
        n = 0;
        
        rel3w
        rel
        wrel
    end
    
    methods
        function er = EntityRelations(n1, n2)
            er.m = n1;
            er.n = n2;
            er.rel = cell(er.m, er.n);
            er.rel3w = cell(er.m, er.n);
            er.wrel = 'X-X-X';
        end
        
        function e = setNonRelations(er, apartset, bpartset)  
            e = er;
            for i = 1:er.m
                for j = 1:er.n
                    if ~any(apartset == i) || ~any(bpartset == j)
                        e.rel{i,j} = 'X-X-X';
                        e.rel3w{i,j}.topr = RCC5.X;
                        e.rel3w{i,j}.dirr = Cardinal.X;
                        e.rel3w{i,j}.disr = QDistance.X;
                    end
                end
            end
        end
        
        function er = setCRelation(er, i, j, str, top, dir, dis) 
             er.rel{i,j} = str;
             er.rel3w{i,j}.topr = top;
             er.rel3w{i,j}.dirr = dir;
             er.rel3w{i,j}.disr = dis;
        end
        
        function str = stringify(er)
            str = [];
%             for i = 1: er.m
%                 for j = 1: er.n
%                     str = [str '   ' er.rel{i, j}];
%                 end
%             end
            
            
            for j = 1: er.n
                for i = 1: er.m
                    if ~((i >= 6 && i<=10) || (j >= 6 && j<=10))
                        str = [str '   ' er.rel{i, j}];
                    end
                end
            end
        end
        
        function tf = isDone(er)
            tf = 1;
            for i = 1:er.m
                for j = 1:er.n
                    if size(er.rel{i, j}) == 0
                        tf = 0;
                        break;
                    end
                end
            end
        end
    end
end