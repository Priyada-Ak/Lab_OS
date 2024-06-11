clear all

img = imread('img7_1.tif');

if ndims(img) > 3 || size(img,3) > 3
    img = cat(3, img(:,:,1), img(:,:,2), img(:,:,3));
end

filtered_img = imfilter(img, fspecial('laplacian'));
result = img-filtered_img;

subplot(1,3,1);
imshow(img);
title('Original Image');

subplot(1,3,2);
imshow(filtered_img);
title('Filtered Image');

subplot(1,3,3);
imshow(result);
title('result Image');

