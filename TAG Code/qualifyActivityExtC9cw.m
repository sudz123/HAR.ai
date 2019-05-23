function [ERlist, qActivity, index] = qualifyActivityExtC9cw(adesc)

%qActivity is the qualitive description of the entire activity based on
%Extended CORE9 relations of entity to entity in each frame
%global extrelmatrix;

qActivity = cell(length(adesc), 1);
ERlist = cell(length(adesc), 1);

index=0; %i=1;
for i = 1:length(adesc)
    frame = adesc{i,1};
    
    if length(frame)>1
        index = index+1;
%     for k1 = 1 : (length(frame) - 1)
%         for k2 = (k1+1) : length(frame)
            ER = EntityRelations(11, 11);
            ER = setNonRelations(ER, adesc{i,1}{1,1}.compset, adesc{i,1}{2,1}.compset); %assuming there are only two entities per frame
            level = 0; 
            %Find inter-entity part relationships using extended Core9, 
            [~, ER, ~] = computeExtCORE9c(adesc{i,1}{1,1}, adesc{i,1}{2,1}, ER, level);
            qFrame = stringify(ER);
            ERlist{index, 1} = ER;
            
            %%computing whole relations
            [wtop, ~, wdist] = computeExtCORE9w(ER);
            [~, ~, wdir, ~] = computeCORE9_rcc5(adesc{i,1}{1,1}.wholebb, adesc{i,1}{2,1}.wholebb);
%         end
%     end
    
        qActivity{index, 1}.c = qFrame;
        qActivity{index, 1}.w = [stringify(wtop) '-' stringify(wdir) '-' stringify(wdist)];
        
    end
end
end