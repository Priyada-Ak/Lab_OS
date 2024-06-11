clear all

 imb = imread('img3_b.bmp');
 h=zeros(1,256);
 [r c]=size(imb);
 n = 0 : 255;
 for i=1:r
     for j=1:c
         h(imb(i,j)+1)=h(imb(i,j)+1)+1;
     end
  stem(n,h);
  drawnow limitrate;
 end
 
 figure(1);
 histogram(imb),title('Histogram b');
