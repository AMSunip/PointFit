% for reading file

function [dataX, dataY, dataZ] = FileReaderXYZ(filePath)
fid = fopen(filePath,'r');
NumLine = 0;
dataX=[];
dataY=[];
dataZ=[];

% maxLine = 100000;

while(~feof(fid))
lineInfo = fgetl(fid);    % ��һ������
NumLine = NumLine+1;
if (isempty(lineInfo))
    continue;             % ���У����¶���һ��
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
