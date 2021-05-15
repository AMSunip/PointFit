% �����¶��㷨
% Version: V12.0.0
% Date��2020/06/18
% Copyright (c) 2013 - 2020, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.


% ���������
function [targetX, targetY] = searchNearestPoint(data, sourceX)

[mm, nn] = size(data);    % ��ȡ���ݵ�����������
xx = data(:,1);
yy = data(:,2);

% ���ó�ʼֵ
targetX = xx(1,1);
targetY = yy(1,1);
searchDistance = abs(targetX - sourceX);

for i=2:mm
    tempTargetX = xx(i,1);
    tempTargetY = yy(i,1);
    tempSearchDistance = abs(tempTargetX - sourceX);    % ������һ����
    if (tempSearchDistance < searchDistance)
        % ����������������
        targetX = tempTargetX;
        targetY = tempTargetY;
        searchDistance = tempSearchDistance;
    end
end

end