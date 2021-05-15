% �����¶��㷨
% Version: V12.0.0
% Date��2020/06/18
% Copyright (c) 2013 - 2020, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.


function DvecXY = movingSlope(data, input_window_size, input_step_length)

half_input_window_size = input_window_size./2;    % �벽��
% ���������վ���, ���ڴ�ż�����
DvecX =[];
DvecY =[];

% ����ǰ�Ľ��
fullDvecX = [];
fullDvecY = [];

[mm, nn] = size(data);    % ��ȡ���ݵ�����������

xx = data(:,1);
yy = data(:,2);

% �ٶ���㲻һ��Ϊ0
minXX = min(xx(:));
maxXX = max(xx(:));
maxDistance = maxXX - minXX;    % ��ȷ�Χ

% �����¶�ֵ
for i = 1:mm
    if (xx(i,1)<= (minXX + half_input_window_size))
        % �������  Point[i+1] - Point[i]
        fullDvecX = [fullDvecX; xx(i,:)];    % ��չ������ֵ
        kValue = (yy(i+1,1) - yy(i,1))./(xx(i+1,1) - xx(i,1));
        fullDvecY =  [fullDvecY; kValue];    % ��չ������ֵ
    elseif((xx(i,1)>(minXX + half_input_window_size))&&(xx(i,1)<(maxXX-half_input_window_size)))
        % ����������
        if (half_input_window_size<=0)
            fullDvecX = [fullDvecX; xx(i,:)];    % ��չ������ֵ
            kValue = (yy(i+1,1) - yy(i,1))./(xx(i+1,1) - xx(i,1));
            fullDvecY =  [fullDvecY; kValue];    % ��չ������ֵ
        else
            fullDvecX = [fullDvecX; xx(i,:)];    % ��չ������ֵ
            sourceX1 = xx(i,1) - half_input_window_size;
            sourceX2 = xx(i,1) + half_input_window_size;
            [targetX1, targetY1] = searchNearestPoint(data, sourceX1);
            [targetX2, targetY2] = searchNearestPoint(data, sourceX2);
            kValue = (targetY2 - targetY1)./ (targetX2 - targetX1);
            fullDvecY =  [fullDvecY; kValue];    % ��չ������ֵ
        end
    elseif(xx(i,1)>maxXX-half_input_window_size)
        % �Ҳ�����  Point[i] - Point[i-1]
        fullDvecX = [fullDvecX; xx(i,:)];    % ��չ������ֵ
        kValue = (yy(i,1) - yy(i-1,1))./(xx(i,1) - xx(i-1,1));
        fullDvecY =  [fullDvecY; kValue];    % ��չ������ֵ
    end
end

fullDvecXY = [fullDvecX,fullDvecY];

% ������Ҫ���¶�ֵ����
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
    
    
    % ������
    DvecXY = [DvecX DvecY];
end

