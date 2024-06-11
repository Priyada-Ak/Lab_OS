clear all

imb = imread('img4_b.bmp');
figure(1)
imshow(imb),title('Original Image');
negativefunction = imcomplement(imb);
figure(2)
imshow(negativefunction),title('Negative Matlab Function');

figure(3)
negfunction2 = 255 - imb;
imshow(negfunction2),title('Negative Function');