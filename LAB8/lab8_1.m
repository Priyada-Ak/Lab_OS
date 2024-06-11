clear all

img = imread('img8_1.bmp');
img = im2double(img);

% Sobel filter 
sobel_filter_x = fspecial('sobel');
sobel_filter_y = sobel_filter_x';
filtered_img_x = imfilter(img, sobel_filter_x);
filtered_img_y = imfilter(img, sobel_filter_y);

mag = sqrt(filtered_img_x.^2 + filtered_img_y.^2);

% Display the images 
subplot(1,2,1);
imshow(img);
title('Original Image');

subplot(1,2,2);
imshow(mag, []);
title('Sobel Filtered Image');