ima = imread('img4_a.bmp');
figure(1)
imshow(ima),title('Original Image');

figure(2)
imhist(ima),title('Histogram Plot');

figure(3)
eq = histeq(ima);
imshow(eq),title('Equalization Image');
figure(4)
imhist(eq),title('Equalization Plot');