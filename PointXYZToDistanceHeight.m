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
% 打开
function pushbutton_browse_Callback(hObject, eventdata, handles)
open(handles);

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
data = load(filePath);

[m,n] = size(data);
if (n<3)
    msgbox('The file input is illegal, please check!','Notification');
end

xdata = data(:,1);
ydata = data(:,2);
zdata = data(:,3);

dx = max(xdata) - min(xdata);
dy = max(ydata) - min(ydata);
dz = max(zdata) - min(zdata);


 % 直线拟合 y = kx + b 模型
 p1 = polyfit(xdata,ydata,1);
 k1 = p1(1,1);
 b1 = p1(1,2);
 
 a = 1;


% --- Executes on button press in pushbutton_clear.
function pushbutton_clear_Callback(hObject, eventdata, handles)
set(handles.edit_file_path,'string', '');
