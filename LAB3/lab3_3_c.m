clear all

 imc = imread('img3_c.bmp');
 h=zeros(1,256);
 [r c]=size(imc);
 n = 0 : 255;
 for i=1:r
     for j=1:c
         h(imc(i,j)+1)=h(imc(i,j)+1)+1;
     end
  stem(n,h);
  drawnow limitrate;
 end

 figure(1);
 histogram(imc),title('Histogram c');
