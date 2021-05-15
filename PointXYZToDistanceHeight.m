function varargout = PointXYZToDistanceHeight(varargin)
% POINTXYZTODISTANCEHEIGHT MATLAB code for PointXYZToDistanceHeight.fig
%      POINTXYZTODISTANCEHEIGHT, by itself, creates a new POINTXYZTODISTANCEHEIGHT or raises the existing
%      singleton*.
%
%      H = POINTXYZTODISTANCEHEIGHT returns the handle to a new POINTXYZTODISTANCEHEIGHT or the handle to
%      the existing singleton*.
%
%      POINTXYZTODISTANCEHEIGHT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POINTXYZTODISTANCEHEIGHT.M with the given input arguments.
%
%      POINTXYZTODISTANCEHEIGHT('Property','Value',...) creates a new POINTXYZTODISTANCEHEIGHT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PointXYZToDistanceHeight_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PointXYZToDistanceHeight_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PointXYZToDistanceHeight

% Last Modified by GUIDE v2.5 15-May-2021 11:26:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PointXYZToDistanceHeight_OpeningFcn, ...
                   'gui_OutputFcn',  @PointXYZToDistanceHeight_OutputFcn, ...
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


% --- Executes just before PointXYZToDistanceHeight is made visible.
function PointXYZToDistanceHeight_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PointXYZToDistanceHeight (see VARARGIN)

% Choose default command line output for PointXYZToDistanceHeight
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PointXYZToDistanceHeight wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PointXYZToDistanceHeight_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_file_path_Callback(hObject, eventdata, handles)
% hObject    handle to edit_file_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_file_path as text
%        str2double(get(hObject,'String')) returns contents of edit_file_path as a double


% --- Executes during object creation, after setting all properties.
function edit_file_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_file_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
% ��
function pushbutton_browse_Callback(hObject, eventdata, handles)
open(handles);

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


% --- Executes on button press in checkbox_angle.
function checkbox_angle_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_angle



function edit_angle_Callback(hObject, eventdata, handles)
% hObject    handle to edit_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_angle as text
%        str2double(get(hObject,'String')) returns contents of edit_angle as a double


% --- Executes during object creation, after setting all properties.
function edit_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox_order.
function checkbox_order_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_order


% --- Executes on button press in pushbutton_ok.
function pushbutton_ok_Callback(hObject, eventdata, handles)

filePath = get(handles.edit_file_path, 'String');
[aPart,bPart,cPart]=fileparts(filePath);
data = load(filePath);

[m,n] = size(data);
if (n<3)
    msgbox('The file input is illegal, please check!','Notification');
end

xdata = data(:,1);
ydata = data(:,2);
zdata = data(:,3);

xDataPrj = [];
yDataPrj = [];

% dx = max(xdata) - min(xdata);
% dy = max(ydata) - min(ydata);
% dz = max(zdata) - min(zdata);

 % ֱ����� y = kx + b ģ��
 p1 = polyfit(xdata,ydata,1);
 k1 = p1(1,1);
 b1 = p1(1,2);
 
 % ��ÿ���������ֱ���ϵ�ͶӰ��
 for i=1:m
     inputX = xdata(i,1);
     inputY = ydata(i,1);
     [outputX,outputY] = getProjectPoint(k1, b1, inputX,inputY);
     xDataPrj = [xDataPrj;outputX];
     yDataPrj = [yDataPrj;outputY];
 end
 
 dataPrj = [xDataPrj,yDataPrj, zdata];
 
orderOption = 1;
if get(handles.checkbox_order,'value')
    option = -1;    % ����д��
end
 
  % ��ͶӰ���������
% ascendingDataPrj = sortrows(dataPrj,1);        % ���պ��������� [����]
% descendingDataPrj = sortrows(dataPrj,-1);      % ���պ����꽵�� [����]
orderDataPrj = sortrows(dataPrj,orderOption);
heightList = orderDataPrj(:,3);                  % �߳��б�

distanceList = [];                               % �����б�
% ��ͶӰ����
x0 = orderDataPrj(1,1);
y0 = orderDataPrj(1,2);
for j = 1:m
    xj = orderDataPrj(j,1);
    yj = orderDataPrj(j,2);
    distance = sqrt((xj-x0) * (xj-x0) + (yj-y0)*(yj-y0));
    distanceList = [distanceList;distance];
end

% �Ƕ�У�� ����������ͶӰ����ֱ�ڶ��ѵķ�����, Ĭ��ֵ90��, ����ͶӰ��
distanceHeightData = [distanceList, heightList];
if get(handles.checkbox_angle,'value')  
    
  strAngle = get(handles.edit_angle, 'String');
  angle = str2num(strAngle);
  if (angle>0) && (angle<180)
      radian = angle*pi/180;
      distanceList = distanceList.*sin(radian);
      distanceHeightData = [distanceList, heightList];    % ���¾���
  else
      msgbox('The angle is not in the specified range, please check!','Notification');
      return;
  end 
end

% ���л���Ϣ����д���ļ�
dateString = func_time_now();
outputFileName =  strcat(aPart, '\', dateString,'.csv');
FileWriterXYZ(outputFileName, distanceHeightData);

% msg = strcat('Distance elevation file has been generated!', '\r\n', 'File Path: ', outputFileName);
strmsg = {'Distance elevation file has been generated!';'File Path: ';outputFileName};
msgbox(strmsg,'Notification');

% --- Executes on button press in pushbutton_clear.
function pushbutton_clear_Callback(hObject, eventdata, handles)
set(handles.edit_file_path,'string', '');
