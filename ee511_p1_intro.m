% ee511_p1_intro
% Name: Zejiong Han
clear;clc;
% number of iterations
N = 50;
NumHeads = 0;
for kk=1:N
  % generate a number U[0,1] and threshold to fair Bernoulli trial
  if (rand() > 0.5)
      NumHeads = NumHeads + 1;
  end
end

% display results
% disp('number of flips')
% disp(N)

% disp('number of heads')
% disp(NumHeads)

% number of iterations
NumFlips = 0;
TailsRunLength = 0;
while TailsRunLength < 2   
    % count the flip
    NumFlips = NumFlips + 1;
    % do the flip
    IsHead = (rand < 0.5);
    
    % found head, tails run length reset
    if (IsHead)
       TailsRunLength = 0; 
    else
        TailsRunLength = TailsRunLength + 1;
    end
end

% output
disp('number of flips until 2 tails')
disp(NumFlips)