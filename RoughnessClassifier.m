%{
RoughnessClassifier - Week 9 Day 2 Experiment
Authors:    Jonathan,Max,Sarra,Connor
Assignment: RoughnessClassifier
History:     30 October 2017 - Updated to use Connect_Arduino
Purpose:
  This program is the basis for Week 8, EGR 102 in class 
  assignment to use machine learning to classify roughness readings 

Notes:  
   Update as needed for your team   
%} 

Connect_Arduino('a');  % Connect to the Arduino
analog = zeros(1,5);   %holds voltage reads

   for index = 1:5 %run values 1 to 5
       analog(index) = readVoltage(a,'A0'); %read from arduino
       pause (.2); %slows down read speed
         count=5-index;  % this is to give you a count down on your screen
         disp(count);
   end %end inside loop
        Highest=max(analog);
        lowest=min(analog);
        AveValue=mean(analog); %sets the average from the test

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%        Place your classifier code here   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                          %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Your values X1 is highest               %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%    X2 is lowest                          %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%    X3 is the average or mean             %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if x1<1.4908

               disp('type 4');

        elseif x2 >=2.09981

                if x1>=2.05818

                      disp('type 5');

                else

                      disp('type 3');

                end

       elseif x2>=1.04608

                disp('type 2');

       else

                disp('type 1');

       end

