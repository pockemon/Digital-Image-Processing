% https://in.mathworks.com/help/images/ref/strel.html
% https://in.mathworks.com/help/images/ref/imdilate.html
% https://in.mathworks.com/help/images/ref/imerode.html
% https://in.mathworks.com/help/images/morphological-dilation-and-erosion.html
% https://in.mathworks.com/help/images/morphological-filtering.html  --
% https://in.mathworks.com/help/images/correcting-nonuniform-illumination.html

clear all;
close all;
clc;
% use a thresholded image as input (binary image)
I = imread('j.png');       % read image
subplot(2,3,1),imshow(I),title('Original Image');
% object in the image is represented by white colour
% background is represented by black colour
%I = 255 - I1;                % Invert the image
subplot(2,3,2),imshow(I),title('Inverted Image');
SE = strel('square',3);     % generate the structuring element
E = imerode(I,SE);          % Perform Erosion Operation
subplot(2,3,3),imshow(E),title('Eroded Image');
D = imdilate(I,SE);          % Perform Dilation Operation
subplot(2,3,4),imshow(D),title('Dilated Image');
