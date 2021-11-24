
% Kai Frudden
% ME 203 Exam 2

% problem 6: Switch case
clc,clear

A=input('A= ');
b=input('b= ');
Wn=input('Wn= ');

amp=0;

switch b
    case b>0
        while(amp<=40)
            n=1;
            n=n+1;
            t=[0:1000:n];
            amp=A*exp(t.*b).*cos(t.*Wn)
            plot(amp,t)

        end
    case(b==0)
        for t=0:L
            amp(t)
            plot(amp)
        end
        
        
end
