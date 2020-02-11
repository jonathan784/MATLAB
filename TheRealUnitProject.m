%{
AnalogReadExample - Demonstrates how to run the Arduino in Matlab
Authors:    Max Burris, Connor Anderson, Jonathan Jimenez, and Chris Bankes
Assignment: Applicable to EGR 103 Assignments
History:    February 9, 2017 - Initial version.
            August 20, 2017 - Added additional commentary
            September 22, 2017 Updated to use Connect_Arduino function
            September 27, 2017 rolled-back to prior connection method
Purpose:
  Demonstrates how read an analog signal from an Arduino
  and display visually as a graph in Matlab.
 
Notes:
  Every MATLAB file submitted in EGR 102 should start with a header
  comment following this outline.  The "History" and "Notes" sections
  are optional, unless otherwise specified.
%}
 
% This function is courtesy Mr. Penn and Dr. Moore. It connects 
% the Arduino if not already connected and eliminates the need  
% to use the command line to do this.%}
% It will make sure the Arduino at the port specified above is
% connected. This code will not be on the test.

clear;
clc;
 
Connect_Arduino('a');
Connect_Servo('s1','a','D9'); 
 
% Configure digital pin 5 as an output and set to 5 volts
configurePin(a,'D5','DigitalOutput');
writeDigitalPin(a,'D5', 1); 
 
analog = zeros(1,100); %holds voltage reads
test = 0; %sets initial test number
writePosition(s1,1)
    
    while 1==1   
        AllValues = 0; % set initial average of this test to 0
   
        for index = 1:100 %run values 2 through 99
            analog(index) = readVoltage(a,'A0'); %read from arduino
            temp = (41.76 * analog(index) ) -26.78;
            analog(index) = temp;
            
           
            pause (.1); %slows down read speed
            plot (analog); %plots values 
            xlim([0 100])
            ylim([30 120]); %set y limits of plot
            ylabel('Temperature'); %label Y axis
            AllValues = analog(index)+ AllValues; %adds all values for test
            angle = -0.0125*(analog(index)) +1.5;
            writePosition(s1,angle);
        end %end for loop
        
 
        AveValue = AllValues/100; %sets the average from the test
        fprintf ('Test %d : Temperture = %.2f\n', test, AveValue) %prints values
   
    end %end while loop 
    
% Set digital pin 5 to 0 volts
writeDigitalPin(a,'D5', 0); 
disp('Test Ended');
 
data = xlsread('TemperatureVoltage.xlsx');
volts = data(:, 1); % Voltage readingss in column A
temps = data(:, 2); % Fahrenheit temperatures in column B
 
% Draw the points as a scatter plot
scatter(volts, temps);
title('Curve fitting demo');
xlabel('Voltage (V)');
ylabel('Temperature (degrees F)');
fit([20:120],[0,1],'poly1'); % makes a graph of decimals between 0 and 1 vs temperatures.
writePosition(s1,temp/90 - 30/100); %writes the angle (from 0 to 1) for the servo to turn based on the temperature.
