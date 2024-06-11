function result = idealfilter(M, N, D0, flag)

% Display input values
disp(['Image size: ' num2str(M) 'x' num2str(N)]);
disp(['Cutoff frequency: ' num2str(D0)]);
if flag == 1
    disp('Filter type: Ideal Lowpass Filter');
elseif flag == 2
    disp('Filter type: Ideal Highpass Filter');
else
    error('Flag must be 1 for ILF or 2 for IHF.');
end

% Generate a meshgrid of frequency coordinates centered at (0,0)
[U, V] = meshgrid(1:N, 1:M);
U = U - (N/2+1);
V = V - (M/2+1);

% Compute the distance between each frequency coordinate and (0,0)
D = sqrt(U.^2 + V.^2);

% Generate the ideal filter based on the flag
if flag == 1 % Ideal Lowpass Filter
    H = double(D <= D0);
elseif flag == 2 % Ideal Highpass Filter
    H = double(D > D0);
else
    error('Flag must be 1 for ILF or 2 for IHF.');
end

% Perform 2D FFT on the filter
F = fft2(H);

% Display the filter (optional)
figure;
imshow(H, []);
if flag == 1
    title(['Ideal Lowpass Filter, D0 = ' num2str(D0)]);
elseif flag == 2
    title(['Ideal Highpass Filter, D0 = ' num2str(D0)]);
end

% Read in the input image
input = imread('input.png');

% Perform 2D FFT on the input image
F_input = fft2(double(input));

% Apply the filter to the input image in the frequency domain
G = F_input .* F;
result = ifft2(G);

% Display the input and output images (optional)
figure;
subplot(1,2,1);
imshow(input, []);
title('Input Image');
subplot(1,2,2);
imshow(result, []);
if flag == 1
    title(['Ideal Lowpass Filter, D0 = ' num2str(D0)]);
elseif flag == 2
    title(['Ideal Highpass Filter, D0 = ' num2str(D0)]);
end

% Display output values
disp(['Output image size: ' num2str(size(result,1)) 'x' num2str(size(result,2))]);

end