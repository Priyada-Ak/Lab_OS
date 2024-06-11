clear all

image1='img1.BMP';
image2='img2.BMP';
image3='img3.BMP';
h1=imread(image1);
h2=imread(image2);
h3=imread(image3);
figure(2)
subplot(3,1,1);
imshow(h1);
title("image 1");

subplot(3,1,2);
imshow(3);
title("image 2");

subplot(3,1,3);
imshow(h3);
title("image 3");


info1 = imfinfo(image1);
info2 = imfinfo(image2);
info3 = imfinfo(image3);

disp("===== Image 1 =====");
disp("Name : "+" "+info1.Filename);
disp("Mod Date : "+" "+info1.FileModDate);
disp("Size : "+" "+info1.FileSize);
disp("Format : "+" "+info1.Format);
disp("FormatVersion : "+" "+info1.FormatVersion);
disp("Width : "+" "+info1.Width);
disp("Height : "+" "+info1.Height);
disp("Bit Depth : "+" "+info1.BitDepth);
disp("Color Type : "+" "+info1.ColorType);
disp("Format Signature : "+" "+info1.FormatSignature);
