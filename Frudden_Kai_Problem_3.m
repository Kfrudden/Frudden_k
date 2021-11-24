
% Kai Frudden
% ME 203 Exam 2

% problem 3: Random Integer Game
clc, clear, format compact

% started with an infitite loop to run the game and generate a random number 
while(1)
    disp('Guess a number between 1 and 15')
    n=randi([1,15],1);
    
    while(1) % the second loop infinitly asks for imput and runs logic checks
        x=input('\nEnter your guess: ');
        if(n==x)
            fprintf('\nYou won!\n')
            break; 
                                        %breaks once the game has been won
        elseif (abs(n-x)==1)
            fprintf('\nVery close\n')
        
        elseif (abs(n-x)<=3 )
            fprintf('\nGetting closer\n')
        else
            fprintf('Not close') 
        end
    end
    
    in=input('\n\nDo you want to play again [0/1]: ');
    if(in==0)
        break;
    end
end