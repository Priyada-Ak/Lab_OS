clear all

im1 = imread('img6_1.tif');
med = medfilt2(im1);

figure
subplot(1,2,1)
imshow(im1),title('original image');
subplot(1,2,2)
imshow(med),title('using median filter');