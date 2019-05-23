classdef Entity
    properties
        id=0;           %id to identify whether entity is a or b : just a number 1 or 2; 0 is invalid
        compbb;         %bounding boxes of components; 1 to 5 for possible body parts, 6 for single part
        wholebb = zeros(4);
        compset;
    end
    
    methods
        function entity = Entity(Y, i)
            entity.id = i;
            %entity.compbb = Y;
            partset = [];
            parts = zeros(11,4);
            for k = 1:11
                entity.compbb{k, 1} = Region(Y(k, :));
                
                parts(k,1)=Y(k,1);
                parts(k,2)=Y(k,2);
                parts(k,3)=Y(k,3);
                parts(k,4)=Y(k,4);
                
                if ~isValidRegion(entity.compbb{k, 1}) %if component coordinates are not 0, include id in the set of parts for entity j
                    parts(k,1)=Inf;
                    parts(k,2)=Inf;
                    parts(k,3)=0;
                    parts(k,4)=0;
                elseif isValidRegion(entity.compbb{k, 1}) %if component coordinates are not 0, include id in the set of parts for entity j
                    partset = [partset k];
                end
            end
            
            xmin = min(parts(:,1));
            ymin = min(parts(:,2));
            xmax = max(parts(:,3));
            ymax = max(parts(:,4));
            entity.wholebb = Region([xmin ymin xmax ymax]);
            entity.compset = partset;
        end
        
        
        function e = newEntity(e, partset)
            %entity.id = e.id;
            %entity.compbb = e.compbb;
            e.compset = partset;
            
            parts = zeros(11,4);
            
            for k = 1:11
                if any(partset == k)
                    %entity.compbb{k, 1} = e.compbb{k, 1};
                    
                    parts(k,1)= e.compbb{k,1}.xint(1);
                    parts(k,2)= e.compbb{k,1}.yint(1);
                    parts(k,3)= e.compbb{k,1}.xint(2);
                    parts(k,4)= e.compbb{k,1}.yint(2);
                else
                    e.compbb{k, 1} = Region([0 0 0 0]);
                    
                    parts(k,1)=Inf;
                    parts(k,2)=Inf;
                    parts(k,3)=0;
                    parts(k,4)=0;
                end
                
            end
            
            xmin = min(parts(:,1));
            ymin = min(parts(:,2));
            xmax = max(parts(:,3));
            ymax = max(parts(:,4));
            e.wholebb = Region([xmin ymin xmax ymax]);
        end
        
    end
end