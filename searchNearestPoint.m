% 计算坡度算法
% Version: V12.0.0
% Date：2020/06/18
% Copyright (c) 2013 - 2020, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.


% 搜索最近点
function [targetX, targetY] = searchNearestPoint(data, sourceX)

[mm, nn] = size(data);    % 获取数据的行数和列数
xx = data(:,1);
yy = data(:,2);

% 设置初始值
targetX = xx(1,1);
targetY = yy(1,1);
searchDistance = abs(targetX - sourceX);

for i=2:mm
    tempTargetX = xx(i,1);
    tempTargetY = yy(i,1);
    tempSearchDistance = abs(tempTargetX - sourceX);    % 搜索下一个点
    if (tempSearchDistance < searchDistance)
        % 在这里更新搜索结果
        targetX = tempTargetX;
        targetY = tempTargetY;
        searchDistance = tempSearchDistance;
    end
end

end