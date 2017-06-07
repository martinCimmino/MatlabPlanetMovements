function varargout = planetGui(varargin)
% PLANETGUI MATLAB code for planetGui.fig
%      PLANETGUI, by itself, creates a new PLANETGUI or raises the existing
%      singleton*.
%
%      H = PLANETGUI returns the handle to a new PLANETGUI or the handle to
%      the existing singleton*.
%
%      PLANETGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLANETGUI.M with the given input arguments.
%
%      PLANETGUI('Property','Value',...) creates a new PLANETGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before planetGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to planetGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help planetGui

% Last Modified by GUIDE v2.5 15-Jun-2015 11:03:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @planetGui_OpeningFcn, ...
                   'gui_OutputFcn',  @planetGui_OutputFcn, ...
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


% --- Executes just before planetGui is made visible.
function planetGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to planetGui (see VARARGIN)

% Choose default command line output for planetGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



% UIWAIT makes planetGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = planetGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function mA_Callback(hObject, eventdata, handles)
% hObject    handle to mA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mA as text
%        str2double(get(hObject,'String')) returns contents of mA as a double


% --- Executes during object creation, after setting all properties.
function mA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xA_Callback(hObject, eventdata, handles)
% hObject    handle to xA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xA as text
%        str2double(get(hObject,'String')) returns contents of xA as a double


% --- Executes during object creation, after setting all properties.
function xA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yA_Callback(hObject, eventdata, handles)
% hObject    handle to yA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yA as text
%        str2double(get(hObject,'String')) returns contents of yA as a double


% --- Executes during object creation, after setting all properties.
function yA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mB_Callback(hObject, eventdata, handles)
% hObject    handle to mB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mB as text
%        str2double(get(hObject,'String')) returns contents of mB as a double


% --- Executes during object creation, after setting all properties.
function mB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xB_Callback(hObject, eventdata, handles)
% hObject    handle to xB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xB as text
%        str2double(get(hObject,'String')) returns contents of xB as a double


% --- Executes during object creation, after setting all properties.
function xB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yB_Callback(hObject, eventdata, handles)
% hObject    handle to yB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yB as text
%        str2double(get(hObject,'String')) returns contents of yB as a double


% --- Executes during object creation, after setting all properties.
function yB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mC_Callback(hObject, eventdata, handles)
% hObject    handle to mC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mC as text
%        str2double(get(hObject,'String')) returns contents of mC as a double


% --- Executes during object creation, after setting all properties.
function mC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xC_Callback(hObject, eventdata, handles)
% hObject    handle to xC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xC as text
%        str2double(get(hObject,'String')) returns contents of xC as a double


% --- Executes during object creation, after setting all properties.
function xC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yC_Callback(hObject, eventdata, handles)
% hObject    handle to yC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yC as text
%        str2double(get(hObject,'String')) returns contents of yC as a double


% --- Executes during object creation, after setting all properties.
function yC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ma=str2double(get(handles.mA, 'String'));
mb=str2double(get(handles.mB, 'String'));
mc=str2double(get(handles.mC, 'String'));

xa=str2double(get(handles.xA, 'String'));
ya=str2double(get(handles.yA, 'String'));

xb=str2double(get(handles.xB, 'String'));
yb=str2double(get(handles.yB, 'String'));

xc=str2double(get(handles.xC, 'String'));
yc=str2double(get(handles.yC, 'String'));

nbr=str2double(get(handles.nbrIt, 'String'));
pas=str2double(get(handles.pas, 'String'));
% pas=str2double(cell2mat(get(handles.pas, 'String')));

global handlePlot;
handlePlot = planets(ma, mb, mc, xa, ya, xb, yb, xc, yc, nbr, pas);


% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




function nbrIt_Callback(hObject, eventdata, handles)
% hObject    handle to nbrIt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nbrIt as text
%        str2double(get(hObject,'String')) returns contents of nbrIt as a double


% --- Executes during object creation, after setting all properties.
function nbrIt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nbrIt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pas_Callback(hObject, eventdata, handles)
% hObject    handle to pas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pas as text
%        str2double(get(hObject,'String')) returns contents of pas as a double


% --- Executes during object creation, after setting all properties.
function pas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
