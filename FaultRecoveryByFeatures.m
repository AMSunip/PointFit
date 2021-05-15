function varargout = FaultRecoveryByFeatures(varargin)
%FAULTRECOVERYBYFEATURES MATLAB code file for FaultRecoveryByFeatures.fig
%      FAULTRECOVERYBYFEATURES, by itself, creates a new FAULTRECOVERYBYFEATURES or raises the existing
%      singleton*.
%
%      H = FAULTRECOVERYBYFEATURES returns the handle to a new FAULTRECOVERYBYFEATURES or the handle to
%      the existing singleton*.
%
%      FAULTRECOVERYBYFEATURES('Property','Value',...) creates a new FAULTRECOVERYBYFEATURES using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to FaultRecoveryByFeatures_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      FAULTRECOVERYBYFEATURES('CALLBACK') and FAULTRECOVERYBYFEATURES('CALLBACK',hObject,...) call the
%      local function named CALLBACK in FAULTRECOVERYBYFEATURES.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaultRecoveryByFeatures

% Last Modified by GUIDE v2.5 19-Feb-2021 21:40:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaultRecoveryByFeatures_OpeningFcn, ...
                   'gui_OutputFcn',  @FaultRecoveryByFeatures_OutputFcn, ...
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


% --- Executes just before FaultRecoveryByFeatures is made visible.
function FaultRecoveryByFeatures_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for FaultRecoveryByFeatures
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaultRecoveryByFeatures wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaultRecoveryByFeatures_OutputFcn(hObject, eventdata, handles)
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



function edit_fl_point_x3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_x3 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_x3 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_x3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_y3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_y3 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_y3 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_y3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_x4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_x4 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_x4 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_x4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_y4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_y4 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_y4 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_y4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_x5_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_x5 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_x5 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_x5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_y5_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_y5 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_y5 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_y5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_fl_point_x6_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_x6 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_x6 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_x6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_x6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_fl_point_y6_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fl_point_y6 as text
%        str2double(get(hObject,'String')) returns contents of edit_fl_point_y6 as a double


% --- Executes during object creation, after setting all properties.
function edit_fl_point_y6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fl_point_y6 (see GCBO)
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
set(handles.edit_fl_point_x3,'string','');
set(handles.edit_fl_point_y3,'string','');
set(handles.edit_fl_point_x4,'string','');
set(handles.edit_fl_point_y4,'string','');
set(handles.edit_fl_point_x5,'string','');
set(handles.edit_fl_point_y5,'string','');
set(handles.edit_fl_point_x6,'string','');
set(handles.edit_fl_point_y6,'string','');


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
x3 = str2double(get(handles.edit_fl_point_x3,'String'));
y3 = str2double(get(handles.edit_fl_point_y3,'String'));
x4 = str2double(get(handles.edit_fl_point_x4,'String'));
y4 = str2double(get(handles.edit_fl_point_y4,'String'));
x5 = str2double(get(handles.edit_fl_point_x5,'String'));
y5 = str2double(get(handles.edit_fl_point_y5,'String'));
x6 = str2double(get(handles.edit_fl_point_x6,'String'));
y6 = str2double(get(handles.edit_fl_point_y6,'String'));
%
inputFilePath = get(handles.edit_file_path,'String');
outputFilePath = get(handles.edit_output_file_path,'String');

% test data
% x1 = 489666.2593;
% y1 = 4058477.2021;
% x2 = 489703.5873;
% y2 = 4058419.6785;
% x3 = 489706.9382;
% y3 = 4058453.7378;
% x4 = 489698.7534;
% y4 = 4058443.8103;
% x5 = 489665.0402;
% y5 = 4058455.3703;
% x6 = 489652.1639;
% y6 = 4058434.7359;


if(canAccelerated())
    accelerator = getAcceleratorPath();
    space = ' ';
    cmdLines = [accelerator];
    cmdLines = [cmdLines,space,'igcea'];
    cmdLines = [cmdLines,space,'aiming'];
    cmdLines = [cmdLines,space,'features'];
    cmdLines = [cmdLines,space,inputFilePath];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_x1,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_y1,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_x2,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_key_point_y2,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_x3,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_y3,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_x4,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_y4,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_x5,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_y5,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_x6,'String')];
    cmdLines = [cmdLines,space,get(handles.edit_fl_point_y6,'String')];
    cmdLines = [cmdLines,space,outputFilePath];
    
% command = '.\\Accelerator\\Windows\\FaultRecovery.exe';    % use directly
% command = '.\\Accelerator\\Windows\\FaultRecovery igcea aiming features D:\Testdata\ELF1-1.xyz 489666.2593 4058477.2021 489703.5873  4058419.6785 489706.9382 4058453.7378 489698.7534 4058443.8103 489665.0402 4058455.3703 489652.1639 4058434.7359 D:\\result_by_feature.xyz';

[status, cmdout] = system(cmdLines);
    return;
end


% read the input file
[dataX,dataY,dataZ] = FileReaderXYZ(inputFilePath);

% get key point
[k1, b1] = getLineKB(x1,y1,x2,y2);    % fault line
[k2, b2] = getLineKB(x3,y3,x4,y4);    % feature line
[k3, b3] = getLineKB(x5,y5,x6,y6);    % feature line
[keyPointX1, keyPointY1] = getIntersectPoint(k1,b1, k2,b2);
[keyPointX2, keyPointY2] = getIntersectPoint(k1,b1, k3,b3);

% calculate translation vector
translationVectorX = keyPointX2 - keyPointX1;
translationVectorY = keyPointY2 - keyPointY1;
if(isReverse(x1,y1,x2,y2, x3,y3,x4,y4, x5,y5,x6,y6))
    translationVectorX = - translationVectorX;
    translationVectorY = - translationVectorY;
end
translationDistance = sqrt(translationVectorX*translationVectorX + translationVectorY*translationVectorY);


[mm, nn] = size(dataX);

for idx = 1:1:mm
    tempX = dataX(idx,1);
    tempY = dataY(idx,1);
    tempZ = dataZ(idx,1);
    
    if (k1 * tempX + b1 - tempY > 0)
        tempX = tempX + translationVectorX;
        tempY = tempY + translationVectorY;
        % tempZ = tempZ;
        % change the value
        dataX(idx,1) = tempX;
        dataY(idx,1) = tempY;
    end  
end

% save the result;
dataXYZ = [dataX, dataY, dataZ];
FileWriterXYZ(outputFilePath, dataXYZ);

% msg = strcat('Succeed!', '\n', 'Output Path: ', outputFilePath, '\n', 'Recovery Distance: ', num2str(translationDistance));
msg = ['Succeed!', '\r\n', 'Output Path: ', outputFilePath, '\r\n', 'Recovery Distance: ', num2str(translationDistance)];
msgbox(msg,'Notification!');
 
 
% --------------------------------------------------------------------
function [result] = isValidInput1(handles)
result = true;

if (isempty(get(handles.edit_file_path,'String')))|| ...
   (isnan(str2double(get(handles.edit_key_point_x1,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_y1,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_x2,'String'))))|| ...
   (isnan(str2double(get(handles.edit_key_point_y2,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_x3,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_y3,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_x4,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_y4,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_x5,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_y5,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_x6,'String'))))|| ...
   (isnan(str2double(get(handles.edit_fl_point_y6,'String'))))|| ...
   (isempty(get(handles.edit_output_file_path,'String')))  
%   change the value
    result = false;
end
