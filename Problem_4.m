% Kai Frudden
% ME 203 Exam 2

% problem 4: ployvals
clc, clear, format compact

%%
x= 200
y= 759
f_xy(x,y)


%%
clc, clear 

x=[1:10]'
y=[1:10]'

f_xy(2,3);

fprintf('\nThe value of g(2,3) is %4.6f\n',f_xy(2,3))

function [g]= f_xy(x,y)
    g=(x.^3+x.*y+(x-3).^2-y.^(-0.2))/1000;
end