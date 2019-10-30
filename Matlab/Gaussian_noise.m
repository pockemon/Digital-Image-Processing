% Add Gaussian noise to an image and To use Gaussian filter
% https://stackoverflow.com/questions/16008228/using-imnoise-to-add-gaussian-noise-to-an-image
% https://dsp.stackexchange.com/questions/23830/how-to-add-white-gaussian-noise-to-an-image-in-matlab
% shttps://stackoverflow.com/questions/2773606/gaussian-filter-in-matlab

close all;
i1 = imread('gn1.jpeg');

i1 = double(i1) / 255;
v = var(i1(:));
j = imnoise(i1, 'gaussian', 0, v);

figure,imshow(i1),title('Original image')
figure,imshow(j),title('Gaussian noise')

%%# Read an image
%I = imread('peppers.jpeg');
%# Create the gaussian filter with hsize = [5 5] and sigma = 2
G = fspecial('gaussian',[5 5],2);
%# Filter it
i3 = imfilter(j,G,'same');

%%using inbuilt function
i4 = imgaussfilt(j,2,'FilterSize',[5 5]);
figure,imshow(i3),title('Gaussian filter')
figure,imshow(i4),title('Gaussian filter')

