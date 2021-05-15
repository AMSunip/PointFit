% PointFit.m
% ��������ͼ

% Version: V14.0.0
% Date��2021/02/18
% integrated fault recovery function
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks:Chen Gan(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version: V13.0.0
% Date��2020/06/30
% bugs fixed, code reorganized and format adjustment
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks:
% Institute of Geology, China Earthquake Administraction.

% Version: V12.0.0
% Date��2020/06/18
% �޸��¶ȼ�����㷨
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA)
% Institute of Geology, China Earthquake Administraction.

% Version: V11.0.0
% Date��2020/06/15
% �����Զ���������߶η�Χ
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Li Xin-nan(IGCEA), Shi Lin(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version: V10.0.0
% Date��2020/04/25
% ������������ߵļ���
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Wang Si-yu(IGCEA)
% Institute of Geology, China Earthquake Administraction.

% Version: V9.0.0
% Date��2019/08/18
% Copyright (c) 2013 - 2019, AMSunip
% Copyright (c) 2007, John D'Errico
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Shi Lin(Sun Yat-sen University)
% Institute of Geology, China Earthquake Administraction.

% Version��V8.0.0
% Date��2018/12/15
% Copyright (c) 2013 - 2018, AMSunip
% All rights reserved.
% Email: aiming_cea@163.com
% Special Thanks: Bi Hai-yun(IGCEA)

% PointFit_V9.0.0 ����˵����
% �����¶�ͼ���ƹ��ܣ�

% PointFit_V8.0.0 ����˵����
% ����ȫ��Χʮ�ֶ�λ���ܣ�

% PointFit_V7.0.0 ����˵����
% 1.�������ʮ��˿��ʾ���ܣ�
% 2.����ʵʱ��ʾ���λ����Ϣ���ܣ�



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
% ��ʼ������


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

% ����ȫ�ֱ���
global GLOBAL_HANDLE_TEXT
global GLOBAL_HANDLE_LINE_OBJECT_A
global GLOBAL_HANDLE_LINE_OBJECT_B


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)



% Module 1: Menu Command
% --------------------------------------------------------------------
% �ļ�
function File_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
% ��
function Open_Callback(hObject, eventdata, handles)
open(handles);


% --------------------------------------------------------------------
% ���
function Clear_Callback(hObject, eventdata, handles)
clearAll(handles);
clc;


% --------------------------------------------------------------------
% Ĭ��
function Default_Callback(hObject, eventdata, handles)
getDefaultSetting(handles);


% --------------------------------------------------------------------
% �˳�
function Exit_Callback(hObject, eventdata, handles)
close


% --------------------------------------------------------------------
% ���
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
% ����
function Help_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
% ����
function About_Callback(hObject, eventdata, handles)
h=dialog('name','About','position',[200 200 200 70]);
uicontrol('parent',h,'style','text','string','PointFit  V14.0.0','position',[55 40 120 20],'fontsize',12);
uicontrol('parent',h,'style','pushbutton','position',[85 10 50 20],'string','OK','callback','delete(gcbf)');
% --------------------------------------------------------------------


% Module 2: UI and Event
% --------------------------------------------------------------------
% �򿪡�
function pushbutton_open_Callback(hObject, eventdata, handles)
open(handles);


% --------------------------------------------------------------------
% ���
function pushbutton_clear_file_path_Callback(hObject, eventdata, handles)
set(handles.edit_file_path,'string','');


% --------------------------------------------------------------------
% ��ͼ 1
function pushbutton_plot_figure1_Callback(hObject, eventdata, handles)

% ****************************** ��������ģ�� ******************************

% ���ݸ�ʽ�ο���DataFormat.csv

% �趨������������ʾ������Ĭ�ϱ�����0.6
default_scale = str2double(get(handles.edit_scale_figure1,'String'));

% ****************************** ��������ģ�� ******************************

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

% ���������ű���ϵ��
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


% AM20181208 ����ģ�� - ��������ȡλ����Ϣ
global GLOBAL_HANDLE_TEXT
GLOBAL_HANDLE_TEXT = text;

setptr(gcf,'crosshair');
set(gcf,'userdata',handles);                      % ��Ҫ��handles����, ����ص�ʱ�޷���ȡ�ֲ�handles
set(gcf,'WindowButtonDownFcn',@MouseClickFcn);    % ����ȡ����, ���лص�
set(gcf,'WindowButtonMotionFcn',@MouseMoveFcn);   % ����ƶ�ʱ, ���лص�


% --------------------------------------------------------------------
% ���
function pushbutton_clear_value_Callback(hObject, eventdata, handles)
set(handles.edit_far_left,'string','');
set(handles.edit_left,'string','');
set(handles.edit_right,'string','');
set(handles.edit_far_right,'string','');


% --------------------------------------------------------------------
% ��ͼ 2
function pushbutton_plot_figure2_Callback(hObject, eventdata, handles)

% ****************************** ��������ģ�� ******************************

% ���ݸ�ʽ�ο���DataFormat.csv

% ����㣨��ѡ��    0ֵ�ж�
input_x_left = str2double(get(handles.edit_far_left,'String'));

% ���ҵ㣨��ѡ��    0ֵ�ж�
input_x_right = str2double(get(handles.edit_far_right,'String'));

% �ϲ��ϣ��£���ת�۵㣬�����꣬����ȡֵ10
input_x1 = str2double(get(handles.edit_left,'String'));
% �ϲ��£��ϣ���ת�۵㣬�����꣬����ȡֵ20
input_x2 = str2double(get(handles.edit_right,'String'));


% �Ƿ�ʹ��4�����޶���Χ
isUse4Point = 0;
if (input_x_left>=0)&&(input_x_right>0)&&(input_x_left<=input_x1)&&(input_x1<=input_x2)&&(input_x2<=input_x_right)
    isUse4Point = 1;
end


% �趨������������ʾ������Ĭ�ϱ�����0.35
% default_scale = 0.35;
default_scale = str2double(get(handles.edit_scale_figure2,'String'));

% ����������ʾ�����ģʽ��Ĭ��ֵΪ1
ERROR_MODE = 1;

if get(handles.radiobutton_error_mode1,'value')
    option = 1;
elseif get(handles.radiobutton_error_mode2,'value')
    option = 2;
elseif get(handles.radiobutton_error_mode3,'value')
    option = 0;
end

ERROR_MODE = option;

% ERROR_MODE = 1;        %  �鿴���ģ�� 1
% ERROR_MODE = 2;        %  �鿴���ģ�� 2
% ERROR_MODE = 3;        %  �鿴���ģ�� 3
% ERROR_MODE = 4;        %  ����������ʾһ�����Գ����䣬���ﲻר����ʾ���ڹ�����������Կ���[distance_min��distance_max]

% ****************************** ��������ģ�� ******************************

% �����㷽ʽ
% ���ģ��
% 1.�������Ƕϲ㶸�����²�ƽ�д��������e1;
%   error = e1
% 2.�������������RMSE1��RMSE2������������ʽ��RMSE = distance(RMSE1��RMSE2);
%   error = e1 + distance(RMSE1��RMSE2)
% 3.�������������RMSE1��RMSE2������������ʽ��RMSE = sum(RMSE1��RMSE2);
%   error = e1 + sum(RMSE1��RMSE2)
% 4.���������
%   vertical_distance = [LEFT_MIN��LEFT_MAX��RIGHT_MIN��RIGHT_MAX];
%   error = [MAX - MIN]/2;

filePath = get(handles.edit_file_path, 'String');

set(gcf,'color','w');

data = load(filePath);

x = data(:,1);
y = data(:,2);
xxmin=min(x);
xxmax=max(x);

% ���������ű���ϵ��
x_scale = 1;
y_scale = 1;
z_scale = 1;

dx = max(x) - min(x);
dy = max(y) - min(y);

x_scale = default_scale * dx / dy;

figure;

%  plot(x,y,'LineSmoothing', 'on');
plot(x,y);  % AM20190818  - ע�͵���
% set(gca,'DataAspectRatio',[x_scale y_scale z_scale]);
% set(gca,'DataAspectRatio','auto');
% axis equal;

hold on;


% �ж�����ĺϷ��ԣ�������벻�Ϸ�����ֻ��ʾ�¶�ͼ
isInputValid = 1;
if ((isnan(input_x1))||(isnan(input_x2))||(input_x1>input_x2))
    isInputValid = 0;
end


% ------------------------------------------------------
if (isInputValid == 1)
    
    xmin = input_x1;
    xmax = input_x2;
    
    % ���ݷֿ�
    [m,n] = size(data);
    
    % ����3���վ������ڴ��
    xdata1 =[];
    xdata2 =[];
    xdata3 =[];
    
    % �����޶��˷�Χ����Ϊ�������
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
    
    
    % ֱ����� y = kx + b ģ��
    p1 = polyfit(xdata1(:,1),xdata1(:,2),1);
    k1 = p1(1,1);
    b1 = p1(1,2);
    x1 = 0:0.01:xmax;
    y1 = k1*x1+b1;
    plot(x1,y1,':r');
    % plot(x1,y1,':r','LineSmoothing', 'on');
    hold on;
    
    % ������������ߵļ���
    p2 = polyfit(xdata2(:,1),xdata2(:,2),1);
    k2 = p2(1,1);
    b2 = p2(1,2);
    str_slope_line = ['slope line: y = ' num2str(k2) 'x + ' num2str(b2)];
    disp(str_slope_line);
    % ��ʾ�¶Ƚ�
    angle_slope = atan(k2).*180./pi;
    if angle_slope<0
        angle_slope = angle_slope + pi;
    end
    str_slope_angle = ['slope angle: angle = ' num2str(angle_slope) '�� ' ];
    disp(str_slope_angle);
    
    p3 = polyfit(xdata3(:,1),xdata3(:,2),1);
    k3 = p3(1,1);
    b3 = p3(1,2);
    x3 = xmin:0.01:data(m,1);
    y3 = k3*x3+b3;
    plot(x3,y3,':r');
    % plot(x3,y3,':r','LineSmoothing', 'on');
    hold on;
    
    
    % �����Զ��巶Χ��
    y_left = k1 * input_x_left + b1;
    y_right = k3 * input_x_right + b3;
    markline = abs(y_right-y_left)/8;
    plot([input_x_left,input_x_left],[y_left - markline, y_left + markline],'--k');         % ��ֱ��
    hold on;
    plot([input_x_right,input_x_right],[y_right - markline, y_right + markline],'--k');     % ��ֱ��
    hold on;
    
    % ���������ʾ
    text(input_x_left+0.2,y_left+0.2,num2str(input_x_left));
    text(input_x_right+0.2,y_right+0.2,num2str(input_x_right));
    
    
    % ���������
    y1_xmin = k1*xmin+b1;
    y3_xmin = k3*xmin+b3;
    
    y1_xmax = k1*xmax+b1;
    y3_xmax = k3*xmax+b3;
    
    plot([xmin,xmin],[y1_xmin,y3_xmin],'--k');     %��ֱ��
    hold on;
    plot([xmax,xmax],[y1_xmax,y3_xmax],'--k');     %��ֱ��
    hold on;
    
    xmid = (xmin+xmax)/2;
    y1_xmid = k1*xmid+b1;
    y3_xmid = k3*xmid+b3;
    plot([xmid,xmid],[y1_xmid,y3_xmid],'-k');      %��ֱ��
    hold on;
    
    h_xmin = abs(y1_xmin - y3_xmin);
    h_xmax = abs(y1_xmax - y3_xmax);
    h_xmid = (h_xmin+h_xmax)/2;
    delta  = abs(h_xmin - h_xmax)/2;
    
    % ���ģ�� 1
    ERROR_MODE_1 = roundn(abs(h_xmax - h_xmid),-2);
    
    % ���ģ�� 2
    RX1 = xdata1(:,2) - [k1*xdata1(:,1) + b1];
    RMSE1 = rms(RX1);
    
    RX3 = xdata3(:,2) - [k3*xdata3(:,1) + b3];
    RMSE3 = rms(RX3);
    
    ERROR_MODE_2 = ERROR_MODE_1 + sqrt(RMSE1*RMSE1 + RMSE3*RMSE3);
    
    % ���ģ�� 3
    ERROR_MODE_3 = ERROR_MODE_1 + (RMSE1 + RMSE3);
    
    % ���ģ�� 4
    LEFT_MAX  = max(RX1);        % ����1
    LEFT_MIN  = min(RX1);        % ����2
    RIGHT_MAX = max(RX3);        % ����3
    RIGHT_MIN = min(RX3);        % ����4
    
    % ����4����룬ȷ��һ����Χ
    % ����������ֲ������жԳ��ԣ��������Χ��ʾ
    % MAX������ֱ���Ϸ���MINֱ����ֱ���·�
    
    % ���Ŷϲ㶸���߳̽��͵����
    if (y1_xmin > y3_xmin)
        distance1 = y1_xmin - y3_xmin + LEFT_MAX - RIGHT_MIN;        % ������ֵ
        distance2 = y1_xmin - y3_xmin + LEFT_MIN - RIGHT_MAX;        % �����Сֵ
        distance3 = y1_xmax - y3_xmax + LEFT_MAX - RIGHT_MIN;        % �ұ����ֵ
        distance4 = y1_xmax - y3_xmax + LEFT_MIN - RIGHT_MAX;        % �ұ���Сֵ
    else
        % ���Ŷϲ㶸���߳����ߵ����
        distance1 = y3_xmin - y1_xmin - LEFT_MIN + RIGHT_MAX;        % ������ֵ
        distance2 = y3_xmin - y1_xmin - LEFT_MAX + RIGHT_MIN;        % �����Сֵ
        distance3 = y3_xmax - y1_xmax - LEFT_MIN + RIGHT_MAX;        % �ұ����ֵ
        distance4 = y3_xmax - y1_xmax - LEFT_MAX + RIGHT_MIN;        % �ұ���Сֵ
    end
    
    %err =roundn(abs(h_xmax - h_xmid),-2);
    
    ERROR_MODE_1_STR = [num2str(roundn(h_xmid,-2)),' �� ',num2str(ERROR_MODE_1)];
    ERROR_MODE_2_STR = [num2str(roundn(h_xmid,-2)),' �� ',num2str(ERROR_MODE_2)];
    ERROR_MODE_3_STR = [num2str(roundn(h_xmid,-2)),' �� ',num2str(ERROR_MODE_3)];
    
    % ERROR_MODE_4_STR����һ����Χ�������߷��������жԳ���
    ERROR_MODE_4_SPACE = [distance1;distance2;distance3;distance4];
    
    distance_max = max(ERROR_MODE_4_SPACE);
    distance_min = min(ERROR_MODE_4_SPACE);
    
    distance = num2str(roundn(h_xmid,-2));
    
    
    % ���ģʽ
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
        % ������
        xlabel('distance(m)');
        ylabel('altitude(m)');
        set(get(gca,'XLabel'),'FontSize',16);%ͼ������Ϊ8 point��С5��
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
% �����¶�ͼ��Ϣ
if(get(handles.checkbox_draw_slope,'Value')==1)
    
    % �����ȡ�������
    input_window_size = str2double(get(handles.edit_window_size, 'String'));    % ���ڴ�С
    input_step_length = str2double(get(handles.edit_step_size, 'String'));    % ������С
    
    xx = data(:,1);
    yy = data(:,2);
    
    DvecXY = movingSlope(data, input_window_size, input_step_length);    % �����¶��㷨
    DvecX = DvecXY(:,1);
    DvecY = DvecXY(:,2);
    
    DvecY = atan(DvecY).*180./pi;    % ������ֵת���ɽǶ�
    [AX,H1,H2] = plotyy(xx,yy,DvecX,DvecY);
    hold on;
    
    % ������ɫ��
    % yyaxis right;    % �����ұ�Y��Ϊ����ֵ��׼
    Data_left_right = [];    % ���������ڴ洢����
    xxDvec = cat(2,DvecX,DvecY);
    % ɸѡ����
    % ׼��һ���վ���, ɸѡ���ݲ����ֵ
    % x��Χ: <=input_x1,  >=input_x2
    [mm,nn]=size(DvecXY);
    % mm: ��������
    % nn: ��������
    if (isInputValid==1)
        for idx=1:mm
            if((xxDvec(idx,1)<=input_x1)||(xxDvec(idx,1)>=input_x2))
                Data_left_right = [Data_left_right;xxDvec(idx,:)];
            end
        end
    else
        for idx=1:mm
            % ���벻�Ϸ�����ȡ�������ݼ����¶�ֵ
            Data_left_right = [Data_left_right;xxDvec(idx,:)];
        end
    end
    
    
    Dvec_left_right = Data_left_right(:,2);    % ȡ��2������
    
    average_green = mean(Dvec_left_right);     % ƽ���¶�ֵ
    
    % ע��: �����и���(��)��, ˫����������⡣
    % Ĭ��������ߵ�������Ϊ��׼�����ʹ��[yyaxis right]�л�Ϊ�ұߵ�������,
    % ��ô���л��Ƶ�ʱ�����ֵ�3�������ᣬҲ����˵����yֵ�޷�ͳһ��һ��
    % Ϊ�˽���������, ���ǻ�һ��˼·:
    % ����ߵ�������Ϊ��׼, ���ұ�ֵ�����ֵ��ӳ��, �Ϳ���ʵ���������ͳһ��
    
    ydata1=get(AX(1),'YLim');
    axis_left_min = min(ydata1);
    axis_left_max = max(ydata1);
    
    ydata2=get(AX(2),'YLim');
    axis_right_min = min(ydata2);
    axis_right_max = max(ydata2);
    
    % ӳ�䷽��
    average_green_left = axis_left_min + (axis_left_max-axis_left_min).*(average_green-axis_right_min)/(axis_right_max-axis_right_min);
    plot([xxmin xxmax],[average_green_left average_green_left],'--g','lineWidth',2.0);
    hold on;
    
    % ���ƽ���¶�ֵ��ǩ
    pos_green_x = (xxmin + xxmax)./2;
    pos_green_y = average_green_left;
    average_slope_angle = ['Original surface slope = ',num2str(average_green),'��'];
    text(pos_green_x,pos_green_y-2,average_slope_angle,'color','g');
    
    set(get(AX(1),'Ylabel'),'str','altitude(m)');    % �߳�
    set(get(AX(2),'Ylabel'),'str','slope(��)');      % �¶�
    xlabel('distance(m)','FontSize',12);             % ����
    % set(H1,'color','k');      % ��ɫ: ��ɫ
    set(H1,'color',[0,114,189]./255.0,'lineWidth',1.0);      % ��ɫ: Ĭ����
    set(H2,'color','r','lineWidth',1.0);
    set(gca,'FontSize',5);
    set(AX(1),'Ycolor','k','FontSize',12);
    set(AX(2),'Ycolor','k','FontSize',12);
    % legend('��������','�¶�');
    % legend('�߳�','�¶�','�¶�2','�¶�3');
end


% --------------------------------------------------------------------
% �ָ�Ĭ������
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
% �������λ�� - ִ�лص�
function MouseClickFcn(src,event)
pt = get(gca,'CurrentPoint');     % �ڵ�ǰ�������л�ȡ�����������λ��
x  = pt(1,1);
y  = pt(1,2);

handles=get(gcf,'userdata');      % ȡ��handlesʹ��

% �ж�Radioѡ��״̬
if get(handles.radiobutton_left,'value')
    option=3;
elseif get(handles.radiobutton_right,'value')
    option=4;
elseif get(handles.radiobutton_far_left,'value')
    option=5;
elseif get(handles.radiobutton_far_right,'value')
    option=6;
end


% ����ѡ��״̬��ֵ
if(option == 3)
    % ת�۵㣨��
    set(handles.edit_left,'string', x);
elseif(option==4)
    % ת�۵㣨�ң�
    set(handles.edit_right,'string', x);
elseif(option==5)
    % ����㣨��ѡ��
    set(handles.edit_far_left,'string', x);
elseif(option==6)
    % ���ҵ㣨��ѡ��
    set(handles.edit_far_right,'string', x);
end


% --------------------------------------------------------------------
% ����ƶ�
function MouseMoveFcn(src,event)
pt = get(gca,'CurrentPoint');     % �ڵ�ǰ�������л�ȡ�����������λ��
x  = pt(1,1);
y  = pt(1,2);
handles=get(gcf,'userdata');      % ȡ��handlesʹ��
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

% ����ʮ��˿
XMinMax = get(gca,'Xlim');
YMinMax = get(gca,'Ylim');
if XMinMax(1)<=x&&x<=XMinMax(2)&&YMinMax(1)<=y&&y<=YMinMax(2)
    GLOBAL_HANDLE_LINE_OBJECT_A=line([x x],[YMinMax(1) YMinMax(2)],'Color','magenta');    % ��������
    GLOBAL_HANDLE_LINE_OBJECT_B=line([XMinMax(1) XMinMax(2)],[y y],'Color','magenta');    % ��������
end



% Module 4: Custom Function
% --------------------------------------------------------------------
function open(handles)
[fileName, pathName] = uigetfile({'*.*';'*.txt';'*.csv'});

if isequal(fileName,0)    % ѡ���ļ�
    msgbox('No file is selected!','Notification');
    return;
else
    filePath = fullfile(pathName, fileName);    %��ȡ�ļ�·��
end

[a,b,c]=fileparts(filePath);

% ���û�ͼ�ı���ɫ
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
