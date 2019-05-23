function example = readExample(filename, no_of_frames)

%filename = input('Enter the file name: ','s');
[fid,msg] = fopen(filename,'r');
%no_of_frames = input('Enter the number of frames ');
activity = cell(no_of_frames,1);


if fid == -1
    disp(msg);
else
    disp(['Reading ' filename ' ...']);
    example = struct;
    example.type = sscanf(filename, '%[a-z A-Z]');
    
    line = fgetl(fid);
    
    %no_of_frames = input('Enter the number of frames ');
    %activity = cell(no_of_frames,1);
    
    frameno = 1;
    while ischar(line)
        Y = [];
        disp(['Reading ' line ' ...']);
        for i = 1 : 10
            line = fgetl(fid);
            X = sscanf(line, ['%d' ',']);
            Y = [Y; X'];
        end
        sz = size(Y);
        frame = cell(sz(2)/5, 1);
        for i = 1 : sz(2)/5
            %entity = struct;
            part = zeros(11,4);
            %entity.id = i;
            s = (i-1)*5+1;
            f = s+4;
            for j = 1:10
                pid = Y(j,s);
%                 Y(j,s+3) = Y(j,s+3) + Y(j,s+1);
%                 Y(j,s+4) = Y(j,s+4) + Y(j,s+2);
                if pid~=0
                    part(pid,:) = Y(j, s+1:f);
                end
            end
            entity = Entity(part, i);
            frame{i, 1} = entity;
        end                                     
        activity{frameno,1} = frame;
        frameno = frameno+1;
        line = fgetl(fid);
    end
        
    example.desc = activity;
%     disp('Computing CORE9 descriptions ...');
%     [example.qC9w, example.hqC9w]= qualifyActivityC9w(activity);
%     
%     disp('Computing CORE9 descriptions using parts ...');
%     [example.qC9c, example.hqC9c] = qualifyActivityC9c(activity);
% 

    disp('Computing Extended CORE9 descriptions (component and whole)...');
    [example.ERlist, example.qExtC9, example.length] = qualifyActivityExtC9cw(activity);
    
end
end
