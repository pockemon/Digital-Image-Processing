%https://in.mathworks.com/help/images/use-morphological-opening-to-extract-large-image-features.html
%https://in.mathworks.com/help/images/ref/imclose.html
%https://in.mathworks.com/help/images/ref/imopen.html

clear all;
close all;
clc;
I1 = imread('tm.jpeg')

SE = strel('square',5);     % generate the structuring element
figure,imshow(I1),title('Original Image');
O = imopen(I1,SE);          % Perform Opening Operation
figure,imshow(O),title('Opened Image');

[I2,map] = imread('closing.png')
figure,imshow(I2,map),title('Original Image');

%%%find type of image
handle = image(I2);
imgmodel = imagemodel(handle); 
str = getImageType(imgmodel)

I3 = ind2gray(I2,map)
C = imclose(I3,SE);          % Perform Closing Operation
figure,imshow(C),title('Closed Image');