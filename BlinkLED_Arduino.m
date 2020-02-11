%{
BlinkLED
Authors:    Jonathan Jimenez
Assignment: EGR 102-000 Week 6
Changed:    5 October 2016
History:     5 October - Add history of changes.
            1 October  2016 - Initial version.
Purpose:
  To program the how long a light will stay on through Arduino

Notes:
  TBD
%}

Connect_Arduino('a');



for i =1:10
    writeDigitalPin(a,'D9',1);
    pause(0.5);
    witeDigitalPin(a,'D9',0);
    pause(0.5);
end

BrightnessSteps= (1-0)/20;

