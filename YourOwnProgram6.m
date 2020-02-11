%{
Your Own Program 6 - monitor 
Authors:    Jonathan Jimenez
Assignment: Your Own Program 6 - monitor
History:    23 October 2017 - Updated to use Connect_Arduino
Purpose:
  To find the tolerance of a certin object
Notes:  
   TBD 
%} 
toleranceLimit = 6.5;
parameterValue= input('Please input current tolerance level: ');
count=0;
while parameterValue < toleranceLimit
    disp('All is well');
    parameterValue = input ('Pleaseinput current tolerance level: ');
end
parameterValue >= toleranceLimit;
disp ('Shut down text.');