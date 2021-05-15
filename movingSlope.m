% 计算坡度算法
% Version: V12.0.0
% Date：2020/06/18
% Copyright (c) 2013 - 2020, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.


function DvecXY = movingSlope(data, input_window_size, input_step_length)

half_input_window_size = input_window_size./2;    % 半步长
% 声明两个空矩阵, 用于存放计算结果
DvecX =[];
DvecY =[];

% 采样前的结果
fullDvecX = [];
fullDvecY = [];

[mm, nn] = size(data);    % 获取数据的行数和列数

xx = data(:,1);
yy = data(:,2);

% 假定起点不一定为0
minXX = min(xx(:));
maxXX = max(xx(:));
maxDistance = maxXX - minXX;    % 跨度范围

% 计算坡度值
for i = 1:mm
    if (xx(i,1)<= (minXX + half_input_window_size))
        % 左采样点  Point[i+1] - Point[i]
        fullDvecX = [fullDvecX; xx(i,:)];    % 扩展横坐标值
        kValue = (yy(i+1,1) - yy(i,1))./(xx(i+1,1) - xx(i,1));
        fullDvecY =  [fullDvecY; kValue];    % 扩展纵坐标值
    elseif((xx(i,1)>(minXX + half_input_window_size))&&(xx(i,1)<(maxXX-half_input_window_size)))
        % 正常采样点
        if (half_input_window_size<=0)
            fullDvecX = [fullDvecX; xx(i,:)];    % 扩展横坐标值
            kValue = (yy(i+1,1) - yy(i,1))./(xx(i+1,1) - xx(i,1));
            fullDvecY =  [fullDvecY; kValue];    % 扩展纵坐标值
        else
            fullDvecX = [fullDvecX; xx(i,:)];    % 扩展横坐标值
            sourceX1 = xx(i,1) - half_input_window_size;
            sourceX2 = xx(i,1) + half_input_window_size;
            [targetX1, targetY1] = searchNearestPoint(data, sourceX1);
            [targetX2, targetY2] = searchNearestPoint(data, sourceX2);
            kValue = (targetY2 - targetY1)./ (targetX2 - targetX1);
            fullDvecY =  [fullDvecY; kValue];    % 扩展纵坐标值
        end
    elseif(xx(i,1)>maxXX-half_input_window_size)
        % 右采样点  Point[i] - Point[i-1]
        fullDvecX = [fullDvecX; xx(i,:)];    % 扩展横坐标值
        kValue = (yy(i,1) - yy(i-1,1))./(xx(i,1) - xx(i-1,1));
        fullDvecY =  [fullDvecY; kValue];    % 扩展纵坐标值
    end
end

fullDvecXY = [fullDvecX,fullDvecY];

% 这里需要对坡度值采样
if (input_step_length <= 0)
    DvecXY = [fullDvecX fullDvecY];
else
    sampleX = fullDvecX(1,1);
    sampleY = fullDvecY(1,1);
    DvecX  = [DvecX ;sampleX];
    DvecY  = [DvecY ;sampleY];
    for j=2:mm
        sampleX = sampleX + input_step_length;
        if (sampleX<=maxXX)
            [sampleTargetX, sampleTargetY] = searchNearestPoint(fullDvecXY, sampleX);
            DvecX  = [DvecX ;sampleTargetX];
            DvecY  = [DvecY ;sampleTargetY];
        end
    end
    
    
    % 输出结果
    DvecXY = [DvecX DvecY];
end

