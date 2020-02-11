%{
ThermistorArduino - Week 5 Day 2 Experiment
Authors:    Julie Whitney, Neil Moore, Laura Larie Letellier 
Assignment: EGR 102 Week 6 Example
History:    30 September 2017 - Initial version.
Purpose:
  Provide template for beginning the assignment

Notes:
  Uses Matlab to control Arduino and capture sensor data
%}

Connect_Arduino('a'); % Connect to the Arduino

analogVoltage = zeros(1,100); % Will hold voltage readings

for index=1:100 % Take 100 readings from the thermistor  
   analogVoltage(index) = readVoltage(a,'A0'); % Read from arduino
   pause (.1); % Slows down read speed
   
   plot (analogVoltage); % Plots values 
   ylim([-1 6]); % Set y limits of plot
   ylabel('Voltage'); % Label Y axis  
end %end for loop
   

   
%***********************************************************
%   YOUR CODE HERE
%***********************************************************

  xlswrite('ThermistorData.xlsx',analogVoltage);
