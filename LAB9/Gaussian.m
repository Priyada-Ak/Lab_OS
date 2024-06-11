function output = Gaussian(M, N, sigma)

% Display input values
disp(['Image size: ' num2str(M) 'x' num2str(N)]);
disp(['Sigma: ' num2str(sigma)]);

% Generate a meshgrid of frequency coordinates centered at (0,0)
[U, V] = meshgrid(1:N, 1:M);
U = U - (N/2+1);
V = V - (M/2+1);

% Compute the distance between each frequency coordinate and (0,0)
D = sqrt(U.^2 + V.^2);

% Generate the Gaussian lowpass filter
H = exp(-(D.^2)/(2*sigma^2));

% Normalize the filter so that the DC gain is 1
H = H ./ sum(H(:));

% Display the filter (optional)
figure;
imshow(H, []);
title(['Gaussian Lowpass Filter, Sigma = ' num2str(sigma)]);

% Read in the input image
input_image = imread('input_image.png');

% Perform 2D FFT on the input image
F_input = fft2(double(input_image));

% Apply the filter to the input image in the frequency domain
G = F_input .* fftshift(H);
output = ifft2(G);

% Display the input and output images (optional)
figure;
subplot(1,2,1);
imshow(input_image, []);
title('Input Image');
subplot(1,2,2);
imshow(output, []);
title(['Gaussian Lowpass Filter, Sigma = ' num2str(sigma)]);

% Display output values
disp(['Output image size: ' num2str(size(output,1)) 'x' num2str(size(output,2))]);

end