function [ feature ] = binary2float( filepath )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
fid=fopen(filepath,'rb');
feature=fread(fid,'float32');
fclose(fid);
end

