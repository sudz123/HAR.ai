function CreateGfileWrap(dataset)

inpath = ['C:\BTP\video_data3\videos\tracking_data\'];

folders = [];
folders = [folders dir(inpath)];

for i = 1:length(folders)
    if ~isempty(regexp(folders(i).name, '[\w]+', 'once'))
        CreateGfile(dataset, folders(i).name);
    end
end
combineGfile(dataset);
end