clear all;clc;

img = imread('img6_1.tif');

[rows, columns] = size(img);

filter = zeros(rows, columns);

half_window = floor(3/2);

for i = half_window+1:rows-half_window
    for j = half_window+1:columns-half_window
        window = img(i-half_window:i+half_window, j-half_window:j+half_window);
        medfilter(i,j) = median(window(:));
    end
end

figure
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(medfilter), title('Median Filtered Image');
