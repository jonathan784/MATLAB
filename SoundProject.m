%{
Playing with Sound
Authors:    Jonathan Jimenez
Assignment:  Experience with Digital Data
Changed:    6 December 2017
History:     6 December 2017
           
Purpose:
  In "Playing with Sound"  you will make a 5 second recording of your voice and then play with the file to see how it looks, how it sounds and what happens when you modify it. 

Notes:
  TBD
%}

clc;

a=audiorecorder(8000,8,1);

recordblocking(a,5)

b=getaudiodata(a);

sound(b);

plot(b)

len=length(b);

sound(b(1:len))

