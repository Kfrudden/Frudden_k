% Kai Frudden
% ME 203 Exam 2

% proj 1: Tic tac


clc, clear, format compact

S=zeros(1,9);
S1='A1 ';
S2='A2 ';
S3='A3';
S4='B1 ';
S5='B2 ';
S6='B3';
S7='C1 ';
S8='C2 ';
S9='C3';
gameboard=[S1,S2,S3;S4,S5,S6;S7,S8,S9];
hBoard=zeros(1,9);
LBoard=zeros(1,9);
disp(gameboard)


    
turn=0;
while(1)

    while(1)
    
        disp('player one: pick your space')
        msg = "Player1 Choose your space";
        opts = ["A1" "A2" "A3" "B1" 'B2' 'B3' 'C1' 'C2' 'C3'];
        choice = menu(msg,opts);
        if hBoard(1,choice)==(1)
            disp('Please select again')
            continue
        else
            turn=turn+1;
            if choice==1
                S1=' X ';
                hBoard(1,1)=hBoard(1,1)+1;
                LBoard(1,1)=(LBoard(1,1)-1);
            end
            if choice==2
                S2=' X ';
                hBoard(1,2)=hBoard(1,2)+1;
                LBoard(1,2)=(LBoard(1,2)-1);
            end
            if choice==3
                S3=' X';
                hBoard(1,3)=hBoard(1,3)+1;
                LBoard(1,3)=(LBoard(1,3)-1);
            end
            if choice==4
                S4=' X ';
                hBoard(1,4)=hBoard(1,4)+1;
                LBoard(1,4)=(LBoard(1,4)-1);
            end
            if choice==5
                S5=' X ';
                hBoard(1,5)=hBoard(1,5)+1;
                LBoard(1,5)=(LBoard(1,5)-1);
            end
            if choice==6
                S6=' X';
                hBoard(1,6)=hBoard(1,6)+1;
                LBoard(1,6)=(LBoard(1,6)-1);
            end
            if choice==7
                S7=' X ';
                hBoard(1,7)=hBoard(1,7)+1;
                LBoard(1,7)=(LBoard(1,7)-1);
            end
            if choice==8
                S8=' X '; 
                hBoard(1,8)=hBoard(1,8)+1;
                LBoard(1,9)=(LBoard(1,8)-1);
            end
            if choice==9
                S9=' X';  
                hBoard(1,9)=hBoard(1,9)+1;
                LBoard(1,9)=(LBoard(1,9)-1);
            end
            hBoard;
            gameboard=[S1,S2,S3;S4,S5,S6;S7,S8,S9];
            disp(gameboard)
            break
        end
     
    end
if turn==9
    break
else
    disp(turn)
end
    while(2)
    
        disp('player two: pick your space')
        msg = "Player2 Choose your space";
        opts = ["A1" "A2" "A3" "B1" 'B2' 'B3' 'C1' 'C2' 'C3'];
        choice = menu(msg,opts);
        if hBoard(1,choice)==1
            disp('Please select again')
            continue
        else
            turn=turn+1;
            if choice==1
                S1=' O ';
                hBoard(1,1)=hBoard(1,1)+1;
                LBoard(1,1)=(LBoard(1,1)+1);
            end
            if choice==2
                S2=' O ';
                hBoard(1,2)=hBoard(1,2)+1;
                LBoard(1,2)=(LBoard(1,3)+1);
            end
            if choice==3
                S3=' O';
                hBoard(1,3)=hBoard(1,3)+1;
                LBoard(1,3)=(LBoard(1,3)+1);
            end
            if choice==4
                S4=' O ';
                hBoard(1,4)=hBoard(1,4)+1;
                LBoard(1,4)=(LBoard(1,4)+1);
            end
            if choice==5
                S5=' O ';
                hBoard(1,5)=hBoard(1,5)+1;
                LBoard(1,5)=(LBoard(1,5)+1);
            end
            if choice==6
                S6=' O';
                hBoard(1,6)=hBoard(1,6)+1;
                LBoard(1,6)=(LBoard(1,6)+1);
            end
            if choice==7
                S7=' O ';
                hBoard(1,7)=hBoard(1,7)+1;
                LBoard(1,7)=(LBoard(1,7)+1);
            end
            if choice==8
                S8=' O ';    
                hBoard(1,8)=hBoard(1,8)+1;
                LBoard(1,8)=(LBoard(1,8)+1);
            end
            if choice==9
                S9=' O';  
                hBoard(1,9)=hBoard(1,9)+1;
                LBoard(1,9)=(LBoard(1,9)+1);
            end
        end
        gameboard=[S1,S2,S3;S4,S5,S6;S7,S8,S9];
        disp(gameboard)
        break
    end
    hBoard
    LBoard

    
    
    L1=LBoard-1
    logi1=abs(L1)./2
    L2=LBoard+1
    logi2=L2./2
end
















