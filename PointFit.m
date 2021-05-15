% PointFit.m
% 绘制剖面图

% Version: V14.0.0
% Date：2021/02/18
% integrated fault recovery function
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks:Chen Gan(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version: V13.0.0
% Date：2020/06/30
% bugs fixed, code reorganized and format adjustment
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks:
% Institute of Geology, China Earthquake Administraction.

% Version: V12.0.0
% Date：2020/06/18
% 修改坡度计算的算法
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.

% Version: V11.0.0
% Date：2020/06/15
% 新增自定义拟合曲线段范围
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA), Shi Lin(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version: V10.0.0
% Date：2020/04/25
% 新增坡面拟合线的计算
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Wang Si-yu(IGCEA)
% Institute of Geology, China Earthquake Administraction.

% Version: V9.0.0
% Date：2019/08/18
% Copyright (c) 2013 - 2019, AMSunip
% Copyright (c) 2007, John D'Errico
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Shi Lin(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version：V8.0.0
% Date：2018/12/15
% Copyright (c) 2013 - 2018, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Bi Hai-yun(IGCEA)

% PointFit_V9.0.0 更新说明：
% 新增坡度图绘制功能；

% PointFit_V8.0.0 更新说明：
% 新增全范围十字定位功能；

% PointFit_V7.0.0 更新说明：
% 1.新增鼠标十字丝显示功能；
% 2.新增实时显示鼠标位置信息功能；



% Module 0: Initial
% ------------------------------------------------------
function varargout = PointFit(varargin)
% POINTFIT MATLAB code for PointFit.fig
%      POINTFIT, by itself, creates a new POINTFIT or raises the existing
%      singleton*.
%
%      H = POINTFIT returns the handle to a new POINTFIT or the handle to
%      the existing singleton*.
%
%      POINTFIT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POINTFIT.M with the given input arguments.
%
%      POINTFIT('Property','Value',...) creates a new POINTFIT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PointFit_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PointFit_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PointFit

% Last Modified by GUIDE v2.5 18-Feb-2021 20:21:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @PointFit_OpeningFcn, ...
    'gui_OutputFcn',  @PointFit_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
% 初始化结束


% --- Outputs from this function are returned to the command line.
function varargout = PointFit_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes just before PointFit is made visible.
function PointFit_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PointFit (see VARARGIN)

% Choose default command line output for PointFit
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PointFit wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% 定义全局变量
global GLOBAL_HANDLE_TEXT
global GLOBAL_HANDLE_LINE_OBJECT_A
global GLOBAL_HANDLE_LINE_OBJECT_B


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)



% Module 1: Menu Command
% --------------------------------------------------------------------
% 文件
function File_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
% 打开
function Open_Callback(hObject, eventdata, handles)
open(handles);


% --------------------------------------------------------------------
% 清除
function Clear_Callback(hObject, eventdata, handles)
clearAll(handles);
clc;


% --------------------------------------------------------------------
% 默认
function Default_Callback(hObject, eventdata, handles)
getDefaultSetting(handles);


% --------------------------------------------------------------------
% 退出
function Exit_Callback(hObject, eventdata, handles)
close


% --------------------------------------------------------------------
% 插件
function plugins_Callback(hObject, eventdata, handles)
% hObject    handle to plugins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
% FaultRecoveryByFeatures
function FaultRecoveryByFeatures_Callback(hObject, eventdata, handles)
openGUIFaultRecoveryByFeatures(handles);


% --------------------------------------------------------------------
function FaultRecoveryByDistance_Callback(hObject, eventdata, handles)
openGUIFaultRecoveryByDistance(handles);


% --------------------------------------------------------------------
% 帮助
function Help_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
% 关于
function About_Callback(hObject, eventdata, handles)
h=dialog('name','About','position',[200 200 200 70]);
uicontrol('parent',h,'style','text','string','PointFit  V14.0.0','position',[55 40 120 20],'fontsize',12);
uicontrol('parent',h,'style','pushbutton','position',[85 10 50 20],'string','OK','callback','delete(gcbf)');
% --------------------------------------------------------------------


% Module 2: UI and Event
% --------------------------------------------------------------------
% 打开…
function pushbutton_open_Callback(hObject, eventdata, handles)
open(handles);


% --------------------------------------------------------------------
% 清空
function pushbutton_clear_file_path_Callback(hObject, eventdata, handles)
set(handles.edit_file_path,'string','');


% --------------------------------------------------------------------
% 绘图 1
function pushbutton_plot_figure1_Callback(hObject, eventdata, handles)

% ****************************** 数据输入模块 ******************************

% 数据格式参考：DataFormat.csv

% 设定横轴和纵轴的显示比例，默认比例：0.6
default_scale = str2double(get(handles.edit_scale_figure1,'String'));

% ****************************** 数据输入模块 ******************************

filePath = get(handles.edit_file_path, 'String');

set(gcf,'color','w');

data = load(filePath);

[m,n] = size(data);

x = data(:,1);
y = data(:,2);

data2 = diff(data);
x_short1 = x(1:(m-1),1:1);
xx = data2(:,1);
yy = data2(:,2);
slope = yy./xx;

slope_angle = atan(slope)*180./pi;

% 坐标轴缩放比例系数
x_scale = 1;
y_scale = 1;
z_scale = 1;

dx = max(x) - min(x);
dy = max(y) - min(y);

x_scale = default_scale * dx / dy;

figure;

% plot(x,y,'LineSmoothing', 'on');
plot(x,y);
set(gca,'DataAspectRatio',[x_scale y_scale z_scale]);
% set(H0,'lineWidth',5.0);
% axis equal;
hold on;


% AM20181208 新增模块 - 捕获鼠标获取位置信息
global GLOBAL_HANDLE_TEXT
GLOBAL_HANDLE_TEXT = text;

setptr(gcf,'crosshair');
set(gcf,'userdata',handles);                      % 需要将handles传出, 否则回调时无法获取局部handles
set(gcf,'WindowButtonDownFcn',@MouseClickFcn);    % 鼠标获取坐标, 进行回调
set(gcf,'WindowButtonMotionFcn',@MouseMoveFcn);   % 鼠标移动时, 进行回调


% --------------------------------------------------------------------
% 清空
function pushbutton_clear_value_Callback(hObject, eventdata, handles)
set(handles.edit_far_left,'string','');
set(handles.edit_left,'string','');
set(handles.edit_right,'string','');
set(handles.edit_far_right,'string','');


% --------------------------------------------------------------------
% 绘图 2
function pushbutton_plot_figure2_Callback(hObject, eventdata, handles)

% ****************************** 数据输入模块 ******************************

% 数据格式参考：DataFormat.csv

% 最左点（可选）    0值判断
input_x_left = str2double(get(handles.edit_far_left,'String'));

% 最右点（可选）    0值判断
input_x_right = str2double(get(handles.edit_far_right,'String'));

% 断层上（下）盘转折点，横坐标，例如取值10
input_x1 = str2double(get(handles.edit_left,'String'));
% 断层下（上）盘转折点，横坐标，例如取值20
input_x2 = str2double(get(handles.edit_right,'String'));


% 是否使用4个点限定范围
isUse4Point = 0;
if (input_x_left>=0)&&(input_x_right>0)&&(input_x_left<=input_x1)&&(input_x1<=input_x2)&&(input_x2<=input_x_right)
    isUse4Point = 1;
end


% 设定横轴和纵轴的显示比例，默认比例：0.35
% default_scale = 0.35;
default_scale = str2double(get(handles.edit_scale_figure2,'String'));

% 设置最终显示的误差模式，默认值为1
ERROR_MODE = 1;

if get(handles.radiobutton_error_mode1,'value')
    option = 1;
elseif get(handles.radiobutton_error_mode2,'value')
    option = 2;
elseif get(handles.radiobutton_error_mode3,'value')
    option = 0;
end

ERROR_MODE = option;

% ERROR_MODE = 1;        %  查看误差模型 1
% ERROR_MODE = 2;        %  查看误差模型 2
% ERROR_MODE = 3;        %  查看误差模型 3
% ERROR_MODE = 4;        %  包络线误差表示一个不对称区间，这里不专门显示，在工作区里面可以看：[distance_min，distance_max]

% ****************************** 数据输入模块 ******************************

% 误差计算方式
% 误差模型
% 1.仅仅考虑断层陡坎上下不平行带来的误差e1;
%   error = e1
% 2.考虑线型拟合误差，RMSE1和RMSE2，按照误差传播公式：RMSE = distance(RMSE1，RMSE2);
%   error = e1 + distance(RMSE1，RMSE2)
% 3.考虑线型拟合误差，RMSE1和RMSE2，按照误差传播公式：RMSE = sum(RMSE1，RMSE2);
%   error = e1 + sum(RMSE1，RMSE2)
% 4.包络线误差
%   vertical_distance = [LEFT_MIN，LEFT_MAX，RIGHT_MIN，RIGHT_MAX];
%   error = [MAX - MIN]/2;

filePath = get(handles.edit_file_path, 'String');

set(gcf,'color','w');

data = load(filePath);

x = data(:,1);
y = data(:,2);
xxmin=min(x);
xxmax=max(x);

% 坐标轴缩放比例系数
x_scale = 1;
y_scale = 1;
z_scale = 1;

dx = max(x) - min(x);
dy = max(y) - min(y);

x_scale = default_scale * dx / dy;

figure;

%  plot(x,y,'LineSmoothing', 'on');
plot(x,y);  % AM20190818  - 注释掉了
% set(gca,'DataAspectRatio',[x_scale y_scale z_scale]);
% set(gca,'DataAspectRatio','auto');
% axis equal;

hold on;


% 判断输入的合法性，如果输入不合法，则只显示坡度图
isInputValid = 1;
if ((isnan(input_x1))||(isnan(input_x2))||(input_x1>input_x2))
    isInputValid = 0;
end


% ------------------------------------------------------
if (isInputValid == 1)
    
    xmin = input_x1;
    xmax = input_x2;
    
    % 数据分块
    [m,n] = size(data);
    
    % 声明3个空矩阵，用于存放
    xdata1 =[];
    xdata2 =[];
    xdata3 =[];
    
    % 现在限定了范围，分为两种情况
    if (isUse4Point == 0)
        for i = 1:m
            if(data(i,1)<xmin)
                xdata1 = [xdata1;data(i,:)];
            elseif((data(i,1)>=xmin)&&(data(i,1)<xmax))
                xdata2 = [xdata2;data(i,:)];
            else
                xdata3 = [xdata3;data(i,:)];
            end
        end
    else
        for i = 1:m
            if ((data(i,1)<xmin) && (data(i,1)>=input_x_left))
                xdata1 = [xdata1;data(i,:)];
            elseif((data(i,1)>=xmin) && (data(i,1)<=xmax))
                xdata2 = [xdata2;data(i,:)];
            elseif ((data(i,1)>xmax) && (data(i,1)<=input_x_right))
                xdata3 = [xdata3;data(i,:)];
            end
        end
    end
    
    
    % 直线拟合 y = kx + b 模型
    p1 = polyfit(xdata1(:,1),xdata1(:,2),1);
    k1 = p1(1,1);
    b1 = p1(1,2);
    x1 = 0:0.01:xmax;
    y1 = k1*x1+b1;
    plot(x1,y1,':r');
    % plot(x1,y1,':r','LineSmoothing', 'on');
    hold on;
    
    % 新增坡面拟合线的计算
    p2 = polyfit(xdata2(:,1),xdata2(:,2),1);
    k2 = p2(1,1);
    b2 = p2(1,2);
    str_slope_line = ['slope line: y = ' num2str(k2) 'x + ' num2str(b2)];
    disp(str_slope_line);
    % 显示坡度角
    angle_slope = atan(k2).*180./pi;
    if angle_slope<0
        angle_slope = angle_slope + pi;
    end
    str_slope_angle = ['slope angle: angle = ' num2str(angle_slope) '° ' ];
    disp(str_slope_angle);
    
    p3 = polyfit(xdata3(:,1),xdata3(:,2),1);
    k3 = p3(1,1);
    b3 = p3(1,2);
    x3 = xmin:0.01:data(m,1);
    y3 = k3*x3+b3;
    plot(x3,y3,':r');
    % plot(x3,y3,':r','LineSmoothing', 'on');
    hold on;
    
    
    % 绘制自定义范围线
    y_left = k1 * input_x_left + b1;
    y_right = k3 * input_x_right + b3;
    markline = abs(y_right-y_left)/8;
    plot([input_x_left,input_x_left],[y_left - markline, y_left + markline],'--k');         % 画直线
    hold on;
    plot([input_x_right,input_x_right],[y_right - markline, y_right + markline],'--k');     % 画直线
    hold on;
    
    % 添加文字显示
    text(input_x_left+0.2,y_left+0.2,num2str(input_x_left));
    text(input_x_right+0.2,y_right+0.2,num2str(input_x_right));
    
    
    % 绘制误差区
    y1_xmin = k1*xmin+b1;
    y3_xmin = k3*xmin+b3;
    
    y1_xmax = k1*xmax+b1;
    y3_xmax = k3*xmax+b3;
    
    plot([xmin,xmin],[y1_xmin,y3_xmin],'--k');     %画直线
    hold on;
    plot([xmax,xmax],[y1_xmax,y3_xmax],'--k');     %画直线
    hold on;
    
    xmid = (xmin+xmax)/2;
    y1_xmid = k1*xmid+b1;
    y3_xmid = k3*xmid+b3;
    plot([xmid,xmid],[y1_xmid,y3_xmid],'-k');      %画直线
    hold on;
    
    h_xmin = abs(y1_xmin - y3_xmin);
    h_xmax = abs(y1_xmax - y3_xmax);
    h_xmid = (h_xmin+h_xmax)/2;
    delta  = abs(h_xmin - h_xmax)/2;
    
    % 误差模型 1
    ERROR_MODE_1 = roundn(abs(h_xmax - h_xmid),-2);
    
    % 误差模型 2
    RX1 = xdata1(:,2) - [k1*xdata1(:,1) + b1];
    RMSE1 = rms(RX1);
    
    RX3 = xdata3(:,2) - [k3*xdata3(:,1) + b3];
    RMSE3 = rms(RX3);
    
    ERROR_MODE_2 = ERROR_MODE_1 + sqrt(RMSE1*RMSE1 + RMSE3*RMSE3);
    
    % 误差模型 3
    ERROR_MODE_3 = ERROR_MODE_1 + (RMSE1 + RMSE3);
    
    % 误差模型 4
    LEFT_MAX  = max(RX1);        % 正号1
    LEFT_MIN  = min(RX1);        % 负号2
    RIGHT_MAX = max(RX3);        % 正号3
    RIGHT_MIN = min(RX3);        % 负号4
    
    % 计算4组距离，确定一个误差范围
    % 此种情况误差分布不具有对称性，最好用误差范围表示
    % MAX距离在直线上方，MIN直线在直线下方
    
    % 沿着断层陡坎高程降低的情况
    if (y1_xmin > y3_xmin)
        distance1 = y1_xmin - y3_xmin + LEFT_MAX - RIGHT_MIN;        % 左边最大值
        distance2 = y1_xmin - y3_xmin + LEFT_MIN - RIGHT_MAX;        % 左边最小值
        distance3 = y1_xmax - y3_xmax + LEFT_MAX - RIGHT_MIN;        % 右边最大值
        distance4 = y1_xmax - y3_xmax + LEFT_MIN - RIGHT_MAX;        % 右边最小值
    else
        % 沿着断层陡坎高程升高的情况
        distance1 = y3_xmin - y1_xmin - LEFT_MIN + RIGHT_MAX;        % 左边最大值
        distance2 = y3_xmin - y1_xmin - LEFT_MAX + RIGHT_MIN;        % 左边最小值
        distance3 = y3_xmax - y1_xmax - LEFT_MIN + RIGHT_MAX;        % 右边最大值
        distance4 = y3_xmax - y1_xmax - LEFT_MAX + RIGHT_MIN;        % 右边最小值
    end
    
    %err =roundn(abs(h_xmax - h_xmid),-2);
    
    ERROR_MODE_1_STR = [num2str(roundn(h_xmid,-2)),' ± ',num2str(ERROR_MODE_1)];
    ERROR_MODE_2_STR = [num2str(roundn(h_xmid,-2)),' ± ',num2str(ERROR_MODE_2)];
    ERROR_MODE_3_STR = [num2str(roundn(h_xmid,-2)),' ± ',num2str(ERROR_MODE_3)];
    
    % ERROR_MODE_4_STR代表一个误差范围，包络线方法不具有对称性
    ERROR_MODE_4_SPACE = [distance1;distance2;distance3;distance4];
    
    distance_max = max(ERROR_MODE_4_SPACE);
    distance_min = min(ERROR_MODE_4_SPACE);
    
    distance = num2str(roundn(h_xmid,-2));
    
    
    % 误差模式
    if(ERROR_MODE==1)
        text(xmin,y3_xmid+0.2,ERROR_MODE_1_STR);
    elseif(ERROR_MODE==2)
        text(xmin,y3_xmid+0.2,ERROR_MODE_2_STR);
    else
        text(xmin,y3_xmid+0.2,ERROR_MODE_3_STR);
    end

    text(xmin-2.5,y1_xmin-0.2,num2str(roundn(h_xmin,-2)));
    text(xmax-2.5,y1_xmax-0.2,num2str(roundn(h_xmax,-2)));
    
    if(get(handles.checkbox_draw_slope,'Value')==0)
        % 坐标轴
        xlabel('distance(m)');
        ylabel('altitude(m)');
        set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
        set(get(gca,'YLabel'),'FontSize',16);
        set(get(gca,'TITLE'),'FontSize',15);
        set(gca,'fontsize',14);
        grid on;
        title('profile of fault scarp');
    end
    hold on;
    
end
% ------------------------------------------------------



% ------------------------------------------------------
% 新增坡度图信息
if(get(handles.checkbox_draw_slope,'Value')==1)
    
    % 这里获取输入参数
    input_window_size = str2double(get(handles.edit_window_size, 'String'));    % 窗口大小
    input_step_length = str2double(get(handles.edit_step_size, 'String'));    % 步长大小
    
    xx = data(:,1);
    yy = data(:,2);
    
    DvecXY = movingSlope(data, input_window_size, input_step_length);    % 计算坡度算法
    DvecX = DvecXY(:,1);
    DvecY = DvecXY(:,2);
    
    DvecY = atan(DvecY).*180./pi;    % 反正切值转换成角度
    [AX,H1,H2] = plotyy(xx,yy,DvecX,DvecY);
    hold on;
    
    % 绘制绿色线
    % yyaxis right;    % 设置右边Y轴为数据值基准
    Data_left_right = [];    % 空容器用于存储数据
    xxDvec = cat(2,DvecX,DvecY);
    % 筛选数据
    % 准备一个空矩阵, 筛选数据并求均值
    % x范围: <=input_x1,  >=input_x2
    [mm,nn]=size(DvecXY);
    % mm: 矩阵行数
    % nn: 矩阵列数
    if (isInputValid==1)
        for idx=1:mm
            if((xxDvec(idx,1)<=input_x1)||(xxDvec(idx,1)>=input_x2))
                Data_left_right = [Data_left_right;xxDvec(idx,:)];
            end
        end
    else
        for idx=1:mm
            % 输入不合法，就取所有数据计算坡度值
            Data_left_right = [Data_left_right;xxDvec(idx,:)];
        end
    end
    
    
    Dvec_left_right = Data_left_right(:,2);    % 取第2列数据
    
    average_green = mean(Dvec_left_right);     % 平均坡度值
    
    % 注意: 这里有个大(天)坑, 双坐标轴的问题。
    % 默认是以左边的坐标轴为基准。如果使用[yyaxis right]切换为右边的坐标轴,
    % 那么进行绘制的时候会出现第3个坐标轴，也就是说数据y值无法统一在一起。
    % 为了解决这个问题, 我们换一种思路:
    % 以左边的坐标轴为基准, 求右边值到左边值得映射, 就可以实现坐标轴的统一。
    
    ydata1=get(AX(1),'YLim');
    axis_left_min = min(ydata1);
    axis_left_max = max(ydata1);
    
    ydata2=get(AX(2),'YLim');
    axis_right_min = min(ydata2);
    axis_right_max = max(ydata2);
    
    % 映射方法
    average_green_left = axis_left_min + (axis_left_max-axis_left_min).*(average_green-axis_right_min)/(axis_right_max-axis_right_min);
    plot([xxmin xxmax],[average_green_left average_green_left],'--g','lineWidth',2.0);
    hold on;
    
    % 添加平均坡度值标签
    pos_green_x = (xxmin + xxmax)./2;
    pos_green_y = average_green_left;
    average_slope_angle = ['Original surface slope = ',num2str(average_green),'°'];
    text(pos_green_x,pos_green_y-2,average_slope_angle,'color','g');
    
    set(get(AX(1),'Ylabel'),'str','altitude(m)');    % 高程
    set(get(AX(2),'Ylabel'),'str','slope(°)');      % 坡度
    xlabel('distance(m)','FontSize',12);             % 距离
    % set(H1,'color','k');      % 颜色: 黑色
    set(H1,'color',[0,114,189]./255.0,'lineWidth',1.0);      % 颜色: 默认蓝
    set(H2,'color','r','lineWidth',1.0);
    set(gca,'FontSize',5);
    set(AX(1),'Ycolor','k','FontSize',12);
    set(AX(2),'Ycolor','k','FontSize',12);
    % legend('陡坎剖面','坡度');
    % legend('高程','坡度','坡度2','坡度3');
end


% --------------------------------------------------------------------
% 恢复默认设置
function pushbutton_reset_parameter_Callback(hObject, eventdata, handles)
getDefaultSetting(handles);



% Module 3: UI Callback
% --------------------------------------------------------------------
function edit_file_path_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_file_path_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_far_left_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_far_left_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_left_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_left_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_right_Callback(hObject, eventdata, handles)


function edit_right_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_far_right_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_far_right_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_scale_figure1_Callback(hObject, eventdata, handles)


function edit_scale_figure1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_scale_figure2_Callback(hObject, eventdata, handles)


function edit_scale_figure2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_window_size_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_window_size_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_step_size_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_step_size_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
% --- Executes on button press in radiobutton_far_left.
function radiobutton_far_left_Callback(hObject, eventdata, handles)
set(handles.radiobutton_far_left,'value',1);
set(handles.radiobutton_left,'value',0);
set(handles.radiobutton_right,'value',0);
set(handles.radiobutton_far_right,'value',0);


% --- Executes on button press in radiobutton_left.
function radiobutton_left_Callback(hObject, eventdata, handles)
set(handles.radiobutton_far_left,'value',0);
set(handles.radiobutton_left,'value',1);
set(handles.radiobutton_right,'value',0);
set(handles.radiobutton_far_right,'value',0);


% --- Executes on button press in radiobutton_right.
function radiobutton_right_Callback(hObject, eventdata, handles)
set(handles.radiobutton_far_left,'value',0);
set(handles.radiobutton_left,'value',0);
set(handles.radiobutton_right,'value',1);
set(handles.radiobutton_far_right,'value',0);


% --- Executes on button press in radiobutton_far_right.
function radiobutton_far_right_Callback(hObject, eventdata, handles)
set(handles.radiobutton_far_left,'value',0);
set(handles.radiobutton_left,'value',0);
set(handles.radiobutton_right,'value',0);
set(handles.radiobutton_far_right,'value',1);


% --------------------------------------------------------------------
% --- Executes on button press in checkbox_draw_slope.
function checkbox_draw_slope_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_draw_slope (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_draw_slope


% --------------------------------------------------------------------
% --- Executes on button press in radiobutton_error_mode1.
function radiobutton_error_mode1_Callback(hObject, eventdata, handles)
set(handles.radiobutton_error_mode1,'value',1);
set(handles.radiobutton_error_mode2,'value',0);
set(handles.radiobutton_error_mode3,'value',0);


% --- Executes on button press in radiobutton_error_mode2.
function radiobutton_error_mode2_Callback(hObject, eventdata, handles)
set(handles.radiobutton_error_mode1,'value',0);
set(handles.radiobutton_error_mode2,'value',1);
set(handles.radiobutton_error_mode3,'value',0);


% --- Executes on button press in radiobutton_error_mode3.
function radiobutton_error_mode3_Callback(hObject, eventdata, handles)
set(handles.radiobutton_error_mode1,'value',0);
set(handles.radiobutton_error_mode2,'value',0);
set(handles.radiobutton_error_mode3,'value',1);


% --------------------------------------------------------------------
% 捕获鼠标位置 - 执行回调
function MouseClickFcn(src,event)
pt = get(gca,'CurrentPoint');     % 在当前坐标轴中获取鼠标点击的坐标位置
x  = pt(1,1);
y  = pt(1,2);

handles=get(gcf,'userdata');      % 取出handles使用

% 判断Radio选中状态
if get(handles.radiobutton_left,'value')
    option=3;
elseif get(handles.radiobutton_right,'value')
    option=4;
elseif get(handles.radiobutton_far_left,'value')
    option=5;
elseif get(handles.radiobutton_far_right,'value')
    option=6;
end


% 根据选中状态赋值
if(option == 3)
    % 转折点（左）
    set(handles.edit_left,'string', x);
elseif(option==4)
    % 转折点（右）
    set(handles.edit_right,'string', x);
elseif(option==5)
    % 最左点（可选）
    set(handles.edit_far_left,'string', x);
elseif(option==6)
    % 最右点（可选）
    set(handles.edit_far_right,'string', x);
end


% --------------------------------------------------------------------
% 鼠标移动
function MouseMoveFcn(src,event)
pt = get(gca,'CurrentPoint');     % 在当前坐标轴中获取鼠标点击的坐标位置
x  = pt(1,1);
y  = pt(1,2);
handles=get(gcf,'userdata');      % 取出handles使用
global GLOBAL_HANDLE_TEXT
global GLOBAL_HANDLE_LINE_OBJECT_A
global GLOBAL_HANDLE_LINE_OBJECT_B
delete(GLOBAL_HANDLE_LINE_OBJECT_A);
delete(GLOBAL_HANDLE_LINE_OBJECT_B);

%txt = '('+num2str(x)+','+num2str(y)+')';
txt = ['(',num2str(x),',',num2str(y),')'];
% x_txt = x + 14;
x_txt = x + 3;
y_txt = y + 3;
pos_txt = [x_txt y_txt];
set(GLOBAL_HANDLE_TEXT, 'string', txt, 'position', pos_txt);

% 绘制十字丝
XMinMax = get(gca,'Xlim');
YMinMax = get(gca,'Ylim');
if XMinMax(1)<=x&&x<=XMinMax(2)&&YMinMax(1)<=y&&y<=YMinMax(2)
    GLOBAL_HANDLE_LINE_OBJECT_A=line([x x],[YMinMax(1) YMinMax(2)],'Color','magenta');    % 绘制竖线
    GLOBAL_HANDLE_LINE_OBJECT_B=line([XMinMax(1) XMinMax(2)],[y y],'Color','magenta');    % 绘制竖线
end



% Module 4: Custom Function
% --------------------------------------------------------------------
function open(handles)
[fileName, pathName] = uigetfile({'*.*';'*.txt';'*.csv'});

if isequal(fileName,0)    % 选择文件
    msgbox('No file is selected!','Notification');
    return;
else
    filePath = fullfile(pathName, fileName);    %获取文件路径
end

[a,b,c]=fileparts(filePath);

% 设置绘图的背景色
set(gcf,'color','w');
set(handles.edit_file_path,'string',filePath);


% --------------------------------------------------------------------
function clearAll(handles)
set(handles.edit_file_path,'string', '');
%
set(handles.edit_far_left,'string', '');
set(handles.edit_left,'string', '');
set(handles.edit_right,'string', '');
set(handles.edit_far_right,'string', '');


% --------------------------------------------------------------------
function getDefaultSetting(handles)
set(handles.edit_file_path,'string','');
%
set(handles.edit_far_left,'string','');
set(handles.edit_left,'string','');
set(handles.edit_right,'string','');
set(handles.edit_far_right,'string','');
%
set(handles.edit_scale_figure1,'string','0.60');
set(handles.edit_scale_figure2,'string','0.35');
%
set(handles.edit_window_size,'string','1');
set(handles.edit_step_size,'string','1');


% --------------------------------------------------------------------
function openGUIFaultRecoveryByFeatures(handles)
% close(PointFit); 
set(FaultRecoveryByFeatures,'Visible','on');


% --------------------------------------------------------------------
function openGUIFaultRecoveryByDistance(handles)
% close(PointFit); 
set(FaultRecoveryByDistance,'Visible','on');
