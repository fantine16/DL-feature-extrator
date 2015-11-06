clear;
clc;


%%  dataset设置为数据集文件夹名
dataset='sample';
%%
filepath='filepath.txt';
FileFolder=fullfile([pwd,'\',dataset,'\']);
fid=fopen([pwd,'\',filepath],'wt');
label_dirOutput=dir(fullfile(FileFolder,'*'));
size=length(label_dirOutput);
for i=3:size    
    labelname=label_dirOutput(i).name;  
    filepath=[FileFolder,labelname];    
    figure_dirOutput=dir(fullfile(filepath,'*.jpg'));    
    figure_num=length(figure_dirOutput);    
    for j=1:figure_num
        fileName=figure_dirOutput(j).name;
        fprintf(fid,'%s\n',[filepath,'\',fileName]);
    end    
end
fclose(fid);