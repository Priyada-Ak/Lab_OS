clear all

im = imread('img7_1.tif');
filter=[0 1 0; 1 -4 1; 0 1 0];
rows = size(im,1);
cols = size(im,2);
output = zeros(rows,cols);

for r = 2:rows-1
    for c = 2:cols-1
        for i=1:3
            output(r,c,i) = sum(sum(double(im(r-1: r+1, c-1: c+1, i)) .* filter));
        end
    end
end
im = uint8(im);
figure(1)
imshow(output);