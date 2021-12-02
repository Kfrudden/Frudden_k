% Kai Frudden
% ME 203 Exam 2

% proj 1: Tic tac
clc, clear, format compact

% started with an infitite loop to run the game and generate a random number 
while(1)
    board=repmat(' ',[3:3])
    while(1)
    
        disp('player one: pick your space')
        msg = "Choose your space";
        opts = ["A1" "A2" "A3" "B1" 'B2' 'B3' 'C1' 'C2' 'C3'];
        choice = menu(msg,opts);
        if choice==1
            board(1,1)+'X'
            disp(board)
        end
        break
    end
  break
  
   
end