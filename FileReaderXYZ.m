% for reading file

function [dataX, dataY, dataZ] = FileReaderXYZ(filePath)
fid = fopen(filePath,'r');
NumLine = 0;
dataX=[];
dataY=[];
dataZ=[];

% maxLine = 100000;

while(~feof(fid))
lineInfo = fgetl(fid);    % 读一行数据
NumLine = NumLine+1;
if (isempty(lineInfo))
    continue;             % 空行，重新读下一行
end

% if (NumLine > maxLine)
%     return;
% end

cellData = strsplit(lineInfo, {','});
[mm, nn] = size(cellData);
if nn >= 3
    xx = str2double(cell2mat(cellData(1,1)));
    yy = str2double(cell2mat(cellData(1,2)));
    zz = str2double(cell2mat(cellData(1,3)));
    dataX=[dataX; xx];
    dataY=[dataY; yy];
    dataZ=[dataZ; zz];
end
end
