clear all;
close all;
clc;
img = imread('brain_MRI.jpg');
figure,imshow(img);
title('Original image')

%%%find type of image
handle = image(img);
imgmodel = imagemodel(handle); 
str = getImageType(imgmodel)

img = rgb2gray(img);

%%binarization
thres = graythresh(img);
bw = im2bw(img,thres);
figure,imshow(bw)
title('Output of imbinarize')

se = strel('disk',3);     % generate the structuring element
e = imerode(bw,se);          % Perform Erosion Operation
figure,imshow(e),title('Eroded Image');

[l,n] = bwlabel(e);
l(l~=18) = 0;
l = imdilate(l,se);
l(l==18) = 1;
l = double(img).*double(l);
imtool(l,[])
