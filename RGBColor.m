%{
RGB Color
Authors:    Jonathan Jimenez
Assignment: RGB Color
Changed:    9 December
History:     9 December
            
Purpose:
  Chage the color of a RGB light.

Notes:
  TBD
%}

clear
clc
a = arduino('com5','uno');
while ~readDigitalPin (a,'D2')
    Blue=readVoltage(a,'A0');
    Green=readVoltage(a,'A1');
    Red=readVoltage(a,'A2');
    dutyCycleBlue= -0.2*Blue+1;
    dutyCycleGreen= -0.2*Green+1;
    dutyCycleRed= -0.2*Red+1;
    writePWDutyCycle(a, 'D11',dutyCycleRed)
    writePWDutyCycle(a, 'D10',dutyCycleGreen)
    writePWDutyCycle(a, 'D9',dutyCycleBlue)
end
fprintf('Red = %.3f \n Green = %.3f \n Blue = %.3 \n',dutyCycleRed,dutyCycleGreen,dutyCycleBlue) 