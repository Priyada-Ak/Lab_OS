function ImageProcessing(imageName)
  
    inputImage = imread(imageName);

    if size(inputImage, 3) == 3
        inputImage = rgb2gray(inputImage);
    end
    
    thresholdValue = graythresh(inputImage);
    binaryImage = imbinarize(inputImage, thresholdValue);

    % perform edge detection
    edgeImage = edge(binaryImage, 'canny');

    % display image
    figure;
    subplot(1,3,1), imshow(edgeImage), title('Edge-Detected Image');
    subplot(1,3,2), imshow(inputImage), title('Input Image');
    subplot(1,3,3), imshow(binaryImage), title('Binary Image');

end