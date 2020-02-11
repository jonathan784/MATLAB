
Im = imread('Coins2.jpg');
imshow(Im);

imtool('Coins2.jpg')
I_Red = Im (:,:,1);
I_Green = Im (:,:,2);
I_Blue = Im (:,:,3);
ThrBlue = imbinarize(I_Blue, levelb);


ThrSum = (~ThrRed&~ThrGreen&~ThrBlue);

subplot(2,2,1), imshow(ThrRed);
title ('Red Plane')
subplot(2,2,2), imshow(ThrGreen);
title ('Green Plane')
subplot(2,2,3), imshow(ThrBlue);
title ('Blue Plane')
subplot(2,2,4), imshow(ThrSum);
title ('Sum')


