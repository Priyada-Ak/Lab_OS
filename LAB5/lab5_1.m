im1=imread('img5_a.bmp');
img = double(im1)/255;
c = 100;
f = c*log(1+(img));
subplot(1,2,1),imshow(im1),title('Original Image');
subplot(1,2,2),imshow((f)),title('Log');
