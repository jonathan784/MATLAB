%{
Weight_Sensor_Assignment - Week 8 Day 2 Experiment
Authors:    Jonathan Jimenez
Assignment: Build a Weight Sensor
History:    23 October 2017 - Updated to use Connect_Arduino
Purpose:
  This program is the basis for Week 8, EGR 102 in class 
  assignment to build a weight sensor.  

Notes:  
   This initial program will read your weight sensor
   and tell you what value you are getting.  
   The while loop will allow it to read over and over again.   
%} 

Connect_Arduino('a');  % Connect to the Arduino
weight = zeros(1,10); %holds voltage reads
test = 0; %sets initial test number
while 1==1 %continually run
   test =test +1; %defines test number    
   AllValues = 0; % set initial average of this test to 0
   input ('Click Enter to start next test');
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%
   %%%%      Add your code to enter a for loop here  %%%%%%%%%
   %%%%          Create an idex variable to hold     %%%%%%%%%
   %%%%           The current sensor value           %%%%%%%%%
   %%%%           Sum them up in 'AllValues'         %%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for index = 1:10 %run values 2 through 99
        weight(index)=readVoltage(a,'A0');
        AllValues =weight(index)+AllValues;
        pause (.5); %slows down read speed


   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%    End the loop here - but you are not yet done %%%%%%%%
   %%%%     To get an average you need to divide by     %%%%%%%%
   %%%%     The number of samples - do that too!        %%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

   plot (weight); %plots values, change the variable to your average
   ylim([-1 6])
   title ('Weight sensor readings');
   ylabel('Voltage from sensor'); %label Y axis

   end
   % call your result AveValue and uncomment the line below
   %fprintf ('test %d = %.4f \n', test, AveValue) %prints values
end %end while loop 
AveValue = AllValue/length (weight)
fprintf ('test%d = %.4f \n', test, AveValue)