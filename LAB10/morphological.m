function morphological(input_img, flag1, n)
input_image = imread(input_img);
output_image = input_image;

for i = 1:n
    switch flag1
        case 1 % Dilation
            output_image = imdilate(output_image, strel('disk', 3));
        case 2 % Erosion
            output_image = imerode(output_image, strel('disk', 3));
        case 3 % Opening
            output_image = imopen(output_image, strel('disk', 3));
        case 4 % Closing
            output_image = imclose(output_image, strel('disk', 3));
        case 5 % Boundary Extraction
            output_image = input_image - imerode(input_image, strel('disk', 3));
        case 6 % Thinning
            output_image = bwmorph(output_image, 'thin', Inf);
        case 7 % Thickening
            output_image = bwmorph(output_image, 'thicken', Inf);
        case 8 % Skeleton
            output_image = bwmorph(output_image, 'skel', Inf);
        otherwise
            disp('Invalid flag1 input')
    end
end

% Display the input and output images 
figure;
subplot(1,2,1), imshow(input_image), title('Input Image');
subplot(1,2,2), imshow(output_image), title('Output Image');

end