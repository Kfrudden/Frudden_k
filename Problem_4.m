% Kai Frudden
% ME 203 Exam 2

% problem 4: ployvals
clc, clear, format compact

x=input('x= ');
y=input('y= ');
f_xy(x,y)

function [g]= f_xy(x,y)
    g=(x.^3+x.*y+(x-3).^2-y^(-0.2))/1000;
end
