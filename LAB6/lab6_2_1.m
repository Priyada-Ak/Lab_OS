clear all

im2 = imread('img6_2.tif')

mask = (1/9)*(ones(3,3));
conv = conv2(im2,mask,'same');

figure(1)
subplot(1,2,1)
imshow(im2),title('original image');
subplot(1,2,2)
imshow(conv),title('using convolution function');

figure(2)
subplot(1,2,1)
histogram(im2),title('original image histogram');
subplot(1,2,2)
histogram(conv),title('using convolution function histogram');