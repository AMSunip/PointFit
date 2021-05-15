function varargout = FaultRecoveryByDistance(varargin)
%FAULTRECOVERYBYDISTANCE MATLAB code file for FaultRecoveryByDistance.fig
%      FAULTRECOVERYBYDISTANCE, by itself, creates a new FAULTRECOVERYBYDISTANCE or raises the existing
%      singleton*.
%
%      H = FAULTRECOVERYBYDISTANCE returns the handle to a new FAULTRECOVERYBYDISTANCE or the handle to
%      the existing singleton*.
%
%      FAULTRECOVERYBYDISTANCE('Property','Value',...) creates a new FAULTRECOVERYBYDISTANCE using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to FaultRecoveryByDistance_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      FAULTRECOVERYBYDISTANCE('CALLBACK') and FAULTRECOVERYBYDISTANCE('CALLBACK',hObject,...) call the
%      local function named CALLBACK in FAULTRECOVERYBYDISTANCE.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaultRecoveryByDistance

% Last Modified by GUIDE v2.5 20-Feb-2021 20:29:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaultRecoveryByDistance_OpeningFcn, ...
                   'gui_OutputFcn',  @FaultRecoveryByDistance_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before FaultRecoveryByDistance is made visible.
function FaultRecoveryByDistance_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for FaultRecoveryByDistance
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaultRecoveryByDistance wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaultRecoveryByDistance_OutputFcn(hObject, eventdata, handles)
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


% --- Executes on button press in pushbutton_browse.
function pushbutton_browse_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open(handles);


function edit_key_point_x1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_key_point_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_key_point_x1 as text
%        str2double(get(hObject,'String')) returns contents of edit_key_point_x1 as a double


% --- Executes during object creation, after setting all properties.
function edit_key_point_x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_key_point_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_key_point_y1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_key_point_y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_key_point_y1 as text
%        str2double(get(hObject,'String')) returns contents of edit_key_point_y1 as a double


% --- Executes during object creation, after setting all properties.
function edit_key_point_y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_key_point_y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_key_point_x2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_key_point_x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_key_point_x2 as text
%        str2double(get(hObject,'String')) returns contents of edit_key_point_x2 as a double


% --- Executes during object creation, after setting all properties.
function edit_key_point_x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_key_point_x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_key_point_y2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_key_point_y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_key_point_y2 as text
%        str2double(get(hObject,'String')) returns contents of edit_key_point_y2 as a double


% --- Executes during object creation, after setting all properties.
function edit_key_point_y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_key_point_y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_input_distance_Callback(hObject, eventdata, handles)
% hObject    handle to edit_input_distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_input_distance as text
%        str2double(get(hObject,'String')) returns contents of edit_input_distance as a double


% --- Executes during object creation, after setting all properties.
function edit_input_distance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_input_distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_clear.
function pushbutton_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clearAll(handles);


% --- Executes on button press in pushbutton_calculate.
function pushbutton_calculate_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
calculate(handles);



function edit_output_file_path_Callback(hObject, eventdata, handles)
% hObject    handle to edit_output_file_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_output_file_path as text
%        str2double(get(hObject,'String')) returns contents of edit_output_file_path as a double


% --- Executes during object creation, after setting all properties.
function edit_output_file_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_output_file_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% Module 4: Custom Function
% --------------------------------------------------------------------
function open(handles)
[fileName, pathName] = uigetfile({'*.*';'*.txt';'*.csv'});

if isequal(fileName,0)    % 选择文件
    msgbox('没有选择文件！','提示');
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
set(handles.edit_file_path,'string','');
%
set(handles.edit_key_point_x1,'string','');
set(handles.edit_key_point_y1,'string','');
set(handles.edit_key_point_x2,'string','');
set(handles.edit_key_point_y2,'string','');
% 
set(handles.edit_input_distance,'string','');


% --------------------------------------------------------------------
function calculate(handles)
if ~isValidInput1(handles)
    msgbox('Please check the input!', 'Notification');
    return; 
end

% execute
% get the input values
x1 = str2double(get(handles.edit_key_point_x1,'String'));
y1 = str2double(get(handles.edit_key_point_y1,'String'));
x2 = str2double(get(handles.edit_key_point_x2,'String'));
y2 = str2double(get(handles.edit_key_point_y2,'String'));
input_distance = str2double(get(handles.edit_input_distance,'String'));
%
inputFilePath = get(handles.edit_file_path,'String');
outputFilePath = get(handles.edit_output_file_path,'String');

% test data
% x1 = 489666.2593;
% y1 = 4058477.2021;
% x2 = 489703.5873;
% y2 = 4058419.6785;
% input_distance = 36.0;


if(canAccelerated())
    accelerator = getAcceleratorPath();
    space = ' ';
    cmdLines = [accelerator];
    cmdLines = [cmdLines,space,'igcea'];
    cmdLines = [cmdLines,space,'aiming'];
    cmdLines = [cmdLines,space,'distance'];
    cmdLines = [cmdLines,space,inputFilePath];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_x1,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_y1,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_x2,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_y2,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_input_distance,'String')];
    cmdLines = [cmdLines,space,outputFilePath];
    
% command = '.\\Accelerator\\Windows\\FaultRecovery.exe';    % use directly
% command = '.\\Accelerator\\Windows\\FaultRecovery igcea aiming distance D:\Testdata\ELF1-1.xyz 489666.2593 4058477.2021 489703.5873  4058419.6785 20 D:\\result_by_distance.xyz';

[status, cmdout] = system(cmdLines);
    return;
end


% read the input file
[dataX,dataY,dataZ] = FileReaderXYZ(inputFilePath);

% get key point
[k1, b1] = getLineKB(x1,y1,x2,y2);    % fault line

ds = input_distance;
dx = ds * 1 / sqrt(1 + k1 * k1);
dy = ds * k1 / sqrt(1 + k1 * k1);

[mm, nn] = size(dataX);

for idx = 1:1:mm
    tempX = dataX(idx,1);
    tempY = dataY(idx,1);
    tempZ = dataZ(idx,1);
    
    % 沿着断层进行区域分割，断层下部分不变，上部分移动
    if (k1 * tempX + b1 - tempY < 0)    % 这里修改了符号
        tempX = tempX - dx;             % 这里修改了符号: [+]变[-]
        tempY = tempY - dy;             % 这里修改了符号: [+]变[-]
        % tempZ = tempZ;
        % change the value
        dataX(idx,1) = tempX;
        dataY(idx,1) = tempY;
    end  
end

% save the result;
dataXYZ = [dataX, dataY, dataZ];
FileWriterXYZ(outputFilePath, dataXYZ);

% msg = strcat('Succeed!', '\n', 'Output Path: ', outputFilePath, '\n', 'Recovery Distance: ', num2str(ds));
msg = ['Succeed!', '\r\n', 'Output Path: ', outputFilePath, '\r\n', 'Recovery Distance: ', num2str(ds)];
msgbox(msg,'Notification!');


% --------------------------------------------------------------------
function [result] = isValidInput1(handles)
result = true;

if (isempty(get(handles.edit_file_path,'String')))|| ...
   (isnan(str2double(get(handles.edit_key_point_x1,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_y1,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_x2,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_y2,'String'))))|| ...
   (isnan(str2double(get(handles.edit_input_distance,'String'))))|| ...
   (isempty(get(handles.edit_output_file_path,'String')))  
%   change the value
    result = false;
end

