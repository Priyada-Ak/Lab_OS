clear all
 ima = imread('img3_a.bmp');

 h=zeros(1,256);
 [r c]=size(ima);
 n = 0 : 255;
 for i=1:r
     for j=1:c
         h(ima(i,j)+1)=h(ima(i,j)+1)+1;
     end
  stem(n,h);
  drawnow limitrate;
 end
 
 figure(1);
 histogram(ima),title('Histogram a');
