%{
Food line - Week 7 Day 1 Experiment
Authors:    Jonathan Jimenez
Assignment: EGR 102 Week 7 Example
History:    17 October 2017 - Initial version.
Purpose:
  A food linre monitor in a Loop
Notes:  
  The goal of this program is to understand the while loops 
  in a way that we can put the Arudino commands in there and 
  have it work.  When we create this program with a real 
  sensor and motor, we will use the sensor to choose a 
  threshold to open or close the gate.  To start we will ask
  the user if the gate needs to be opened. 
%}

noCan=2; 
count =0; % this variable will be used as an ACCUMULATOR to count the cans

% start with Gate down
disp('gate down to start');

%*******************************************************************
%*******************************************************************
%
%      This command asks if the sensor is blocked (can present)
canState = input('is the the sensor blocked? If so type 1 otherwise 4=');

% *****************************************************************
%******************************************************************
%
%   Add this command 2 places in the code below to make this 
%   program function correctly
%
%*******************************************************************
%*******************************************************************

while 1==1  %to run continuously

    while canState >= noCan %continually run
       % no can in the way, gate stays down
       disp('gate down waiting on can');
       pause(1); % wait a second
       canState = input('is the the sensor blocked? If so type 1 otherwise 4=');
    end %end while loop 

    count = count+1;

    while canState < noCan %sensor is blocked
        disp('gate up check to see if it is clear'); % raise the gate
        % wait for the can to move out of the way
        pause (3);
        canState = input('is the the sensor blocked? If so type 1 otherwise 4=');
    end

    disp('gate down to wait on next can');
    disp(count);
    
end


