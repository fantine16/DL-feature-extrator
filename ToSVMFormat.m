clear;
clc;
%%  dataset设置为数据集文件夹名
dataset='sample';
%%
FileFolder=fullfile([pwd,'\',dataset,'\']);
label_dirOutput=dir(fullfile(FileFolder,'*'));
size=length(label_dirOutput);
data=[];
label=[];
for i=3:size  
    labelname=label_dirOutput(i).name;    
    filepath=[FileFolder,labelname];
    figure_dirOutput=dir(fullfile(filepath,'*.feat'));    
    figure_num=length(figure_dirOutput);    
    for j=1:figure_num
        fileName=figure_dirOutput(j).name;
        featurePath=[filepath,'\',fileName];
        feature=binary2float(featurePath);
        data=[data;feature'];
        label=[label;i-2];
    end
end
save data.mat data;
save label.mat label;

