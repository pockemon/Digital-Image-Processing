clear all;
close all;
clc;
img = imread('rice_1.jpeg');
figure,imshow(img);
title('Original indexed image')


%%%find type of image
handle = image(img);
imgmodel = imagemodel(handle); 
str = getImageType(imgmodel)

img = rgb2gray(img)

%%binarization
bw = im2bw(img,0.5);
figure,imshow(bw)
title('Output of im2bw')

%%%find type of image
%handle = image(bw);
%imgmodel = imagemodel(handle); 
%str = getImageType(imgmodel)

se = strel('diamond',1);     % generate the structuring element
e = imerode(bw,se);          % Perform Erosion Operation
figure,imshow(e),title('Eroded Image');

% Do connected components labeling:
%labeledImage = bwlabel(e);
% Let's assign each blob a different color to visually show the user the distinct blobs.
%coloredLabels = label2rgb (labeledImage, 'hsv', 'k', 'shuffle'); % pseudo random color labels
% coloredLabels is an RGB image.  We could have applied a colormap instead (but only with R2014b and later)
%figure,imshow(coloredLabels),title('Labeled Image');

[L,n] = bwlabel(e,4)
%imtool(L,[])