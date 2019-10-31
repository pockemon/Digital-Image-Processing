%https://in.mathworks.com/help/images/ref/imnoise.html
%https://in.mathworks.com/help/images/ref/psnr.html

clc
clear all

img = imread('noise.jpeg');
figure,imshow(img)

%rician noise
%s=5; % noise level (NB actual Rician stdev depends on signal, see ricestat)
%im_r = ricernd(img, s); % "Add" Rician noise (make Rician distributed)
%figure,imshow(im_r);

%salt-pepper noise
img1 = imnoise(img,'salt & pepper',0.02);
figure,imshow(img1)

%gaussian noise
img2 = imnoise(img,'gaussian',0.09);
figure,imshow(img2)

% the average of 3^2, or 9 values(filters the multidimensional array A with the multidimensional filter h)
h = ones(3,3) / 3^2; 
I2 = imfilter(img2,h); 
 
% Measure signal-to-noise ratio
img3=img;
img3=double(img3(:));
ima=max(img3(:));
imi=min(img3(:));
mse=std(img3(:));
%snr=20*log10((ima-imi)./mse)
% Measure Peak SNR
[peaksnr, snr1] = psnr(img2, img);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
fprintf('\n The SNR value is %f', snr1);
fprintf('\n The MSE value is %0.4f \n', mse);