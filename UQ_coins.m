% Code for The Outcome of Tossing a Coin One 
% Million Times (or N-times)

% While computing the odds of tossing a coin for more than a 
% thousand time there is a good chance of variable overflow with 
% the traditional combination-based head counting. Therefore, we 
% determine the probability over iterations.

clc;clear all
Number_of_coins=1e6 %Can cnahge the number for a different N 
y=[1 1]/2;
for i=1:Number_of_coins-1
    y=[y 0]+[0 y];
    y=y/2;
end
cy=cumsum(y)

%save('CDF_Million_Toss','cy')