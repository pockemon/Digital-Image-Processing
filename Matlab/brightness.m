clc
clear all

img = imread('flowers.jpg');
figure,imshow(img)

%average brightness
brightness = mean2(img)

%brightest pixel
brightestValue = max(img(:))

%increase brightness
img1 = double(img);
img2 = img1+40;
figure,imshow(img)
