clear all

image2='img2.BMP';
h1=imread(image2);
subplot(2,1,1);
imshow(h1);
title("Original");
subplot(2,1,2);
I = rgb2gray(h1);
imshow(I);
title("Gray");

BW = im2bw(h1,0.85)
figure(2);
subplot(2,1,1);
imshow(h1);
title("Original");
subplot(2,1,2);
imshow(BW);
title("Black&White");


