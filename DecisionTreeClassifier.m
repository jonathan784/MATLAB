%{
Decision Tree - monitor 
Authors:    Jonathan Jimenez, Max, connor, sarra
Assignment: Your Own Program 6 - monitor
History:    30 October 2017 - Updated to use Connect_Arduino
Purpose:
 To make a decision Tree from data
Notes:  
   TBD 
%} 
%Step 1:  Bring in your data from yesterday.
rough=xlsread("Testsandpaper.xlsx");
medium=xlsread("Testconstructionpaper.xlsx");
smooth=xlsread("Testplastic.xlsx");

%Step 2: Create the data set to train your classifier
train=[rough;medium;smooth];

%Step 3: Create an answer array
result(1:10)=1;
result(11:20)=2;
result(21:30)=3;
result=result';

%Step 4:  Train your decision tree
Mdl = fitctree(train,result)
%Step 5:  Looking at the results
view(Mdl,'mode','graph')