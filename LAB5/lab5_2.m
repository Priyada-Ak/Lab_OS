im1=imread('img5_a.bmp');
figure(1)
imshow(im1);
imgamma = imadjust(im1,[],[],0.5);
figure(2)
imshow(imgamma);