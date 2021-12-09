% Kai Frudden
% ME 203 Exam 2

% proj 1: Tic tac
clc, clear, format compact

%Here I am initalizing various count variables that will run operations
% inside the loop
%Creating the inital Gameboard
%These 3 arrays A,B,&C are used for win condition logic checks
A=[1:3];
B=[4:6];
C=[7:9];
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
disp(gameboard)
fprintf('\n')

turn=0;
while(1)

    while(1)        %This loop operates for Player one and effects changes to the gameboard and system for every turn.
    
        disp('player one: pick your space')  %This is the creation of the GUI
        msg = "Player1 Choose your space";
        opts = ["A1" "A2" "A3" "B1" 'B2' 'B3' 'C1' 'C2' 'C3'];
        choice = menu(msg,opts);
        
        if hBoard(1,choice)==(1)    %This is the inital logic check to prevent double selection of spaces.
            disp('Please select again')
            fprintf('\n')
            continue
        else                        %These elseif statments change the gameboard and logic arrays depending on the GUI selction                         
            turn=turn+1;            % there are 9 different choices one for each grid space on the gameboard
            if choice==1
                S1=' X ';
                hBoard(1,1)=hBoard(1,1)+1;
                A(1,1)=0;
            elseif choice==2
                S2=' X ';
                hBoard(1,2)=hBoard(1,2)+1;
                A(1,2)=0;
            elseif choice==3
                S3=' X';
                hBoard(1,3)=hBoard(1,3)+1;
                A(1,3)=0;
            elseif choice==4
                S4=' X ';
                hBoard(1,4)=hBoard(1,4)+1;
                B(1,1)=0;
            elseif choice==5
                S5=' X ';
                hBoard(1,5)=hBoard(1,5)+1;
                B(1,2)=0;
            elseif choice==6
                S6=' X';
                hBoard(1,6)=hBoard(1,6)+1;
                B(1,3)=0;
            elseif choice==7
                S7=' X ';
                hBoard(1,7)=hBoard(1,7)+1;
                C(1,1)=0;
            elseif choice==8
                S8=' X '; 
                hBoard(1,8)=hBoard(1,8)+1;
                C(1,2)=0;
            elseif choice==9
                S9=' X';  
                hBoard(1,9)=hBoard(1,9)+1;
                C(1,3)=0;
            end
            hBoard;
            gameboard=[S1,S2,S3;S4,S5,S6;S7,S8,S9];
            disp(gameboard)
            fprintf('\n')
            break
        end
    end
    
if A(1,1)==A(1,2) && A(1,2)==A(1,3)
    disp('Player One Wins!')
    break
elseif B(1,1)==B(1,2) && B(1,2)==B(1,3)
    disp('Player One Wins!')
    break    
elseif C(1,1)==C(1,2) && C(1,2)==C(1,3)
    disp('Player One Wins!')
    break   
elseif A(1,1)==B(1,1) && B(1,1)==C(1,1)
    disp('Player One Wins!')
    break   
elseif A(1,2)==B(1,2) && B(1,2)==C(1,2)
    disp('Player One Wins!')
    break    
elseif A(1,3)==B(1,3) && B(1,3)==C(1,3)
    disp('Player One Wins!')
    break
elseif A(1,1)==B(1,2) && B(1,2)==C(1,3)
    disp('Player One Wins!')
    break
elseif A(1,3)==B(1,2) && B(1,2)==C(1,1)
    disp('Player One Wins!')
    break
end
    
if turn==9                  %Since the game must be completed in 9 moves or less I built a conditional to check
    disp('Game is a Tie!')  % if the game wasnt completed by move 9 the result is a tie.
    break
else

end

    while(2)                 %The second while loop is identical to the first
                             % except that is operates for player 2
    
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
                A(1,1)=-1;
            elseif choice==2
                S2=' O ';
                hBoard(1,2)=hBoard(1,2)+1;
                A(1,2)=-1;
            elseif choice==3
                S3=' O';
                hBoard(1,3)=hBoard(1,3)+1;
                A(1,3)=-1;
            elseif choice==4
                S4=' O ';
                hBoard(1,4)=hBoard(1,4)+1;
                B(1,1)=-1;
            elseif choice==5
                S5=' O ';
                hBoard(1,5)=hBoard(1,5)+1;
                B(1,2)=-1;
            elseif choice==6
                S6=' O';
                hBoard(1,6)=hBoard(1,6)+1;
                B(1,3)=-1;
            elseif choice==7
                S7=' O ';
                hBoard(1,7)=hBoard(1,7)+1;
                C(1,1)=-1;
            elseif choice==8
                S8=' O '; 
                hBoard(1,8)=hBoard(1,8)+1;
                C(1,2)-1;
            elseif choice==9
                S9=' O';  
                hBoard(1,9)=hBoard(1,9)+1;
                C(1,3)=-1;
            end
        end
        gameboard=[S1,S2,S3;S4,S5,S6;S7,S8,S9];
        disp(gameboard)
        fprintf('\n')
        break
    end

if A(1,1)==A(1,2) && A(1,2)==A(1,3)
    disp('Player Two Wins!')
    break
elseif B(1,1)==B(1,2) && B(1,2)==B(1,3)
    disp('Player Two Wins!')
    break    
elseif C(1,1)==C(1,2) && C(1,2)==C(1,3)
    disp('Player Two Wins!')
    break   
elseif A(1,1)==B(1,1) && B(1,1)==C(1,1)
    disp('Player Two Wins!')
    break   
elseif A(1,2)==B(1,2) && B(1,2)==C(1,2)
    disp('Player Two Wins!')
    break    
elseif A(1,3)==B(1,3) && B(1,3)==C(1,3)
    disp('Player Two Wins!')
    break
elseif A(1,1)==B(1,2) && B(1,2)==C(1,3)
    disp('Player Two Wins!')
    break
elseif A(1,3)==B(1,2) && B(1,2)==C(1,1)
    disp('Player Two Wins!')
    break
end    

end
















