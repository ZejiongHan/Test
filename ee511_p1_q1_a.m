clear;clc;
% number of iterations of each experiment 
NumFlips = 50;
% number of experiments
NumExper = 1000;
NumHeads = zeros(1,NumExper);


for tt = 1:NumExper
    % simulate tossing a fair coin 50 times
    EachFlip = rand(1,NumFlips) > 0.5;
    for kk = 1:NumFlips
        % using a threshold to represent a fair Bernoulli trial
        if (EachFlip(kk) == 1)
        NumHeads(tt) = NumHeads(tt) + 1; % head is 1 and tail is 0
        end
    end
end

m = 1:1:NumExper;
bar(m,NumHeads);
axis([0, NumExper+1, 0, 35]);
% set(gca,'xtick',1:NumExper)
title('The histogram for question 1-a (1000)');
xlabel('The number of repetition');
ylabel('The number of heads in 50 flips');


