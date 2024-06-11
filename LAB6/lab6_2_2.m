clear all

image = imread('img6_2.tif');
[rows, cols] = size(image);

filter = ones(rows, cols);

for i = 2:rows-1
    for j = 2:cols-1
        region = image(i-1:i+1, j-1:j+1);
        avg = sum(region(:)) / 9;
        filter(i, j) = avg;
    end
end
h2 = histogram(filter);

figure(1)
subplot(1, 2, 1)
imshow(image),title('Original Image')
subplot(1, 2, 2)
imshow(filter),title('Convolution Image')

figure(2)
subplot(1,2,1)
histogram(image),title('Original Image Histogram')
subplot(1, 2, 2)
histogram(filter),title('Convolution Image Histogram');

