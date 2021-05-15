%%
function [T_NOW] = func_time_now(~)
%close all;clear all;clc;
T = fix(clock);
T_length = length(T);
T_now = [];
for i = 2:T_length
    if  T(i)<10   %²¹Áã
        t0 = num2str(0);
        t1 = num2str(T(i));
        t = [t0 t1];
        T_now = [T_now t];       
    else
        t = num2str(T(i));
        T_now = [T_now t];     
    end
end
T_NOW = [num2str(T(1)) T_now];
end


