clear all

img1 = imread('img3_a.bmp');
figure(1)
imshow(img1),title('Image 3_a');


img2 = imread('img3_b.bmp');
figure(2)
imshow(img2),title('Image 3_b');

img3 = imread('img3_c.bmp');
figure(3)
imshow(img3),title('Image 3_c');

figure(4)
imhist(img1),title('Histogram of Image 3_a');
figure(5)
imhist(img2),title('Histogram of Image 3_b');
figure(6)
imhist(img3),title('Histogram of Image 3_c');

