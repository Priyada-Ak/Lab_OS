clear all
a=[1 2 3;4 5 6;7 8 9];
sumrow=[0;0;0];
sumcol=[0 0 0];
for i=1:3
   for j=1:3
      sumrow(i)=sumrow(i)+a(i,j);
      sumcol(j)=sumcol(j)+a(i,j);
   end
end
disp("Matrix A");
disp(a)
disp("Sumation Row");
disp(sumrow)
disp("Sumation Col");
disp(sumcol)