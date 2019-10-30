%Contrast stretching and Histogram stretching
close all
i = imread('pout.jpeg')
figure,imshow(i)
%figure,imhist(i(:,:,1)); red channel
%figure,imhist(i(:,:,2)); green channel
%figure,imhist(i(:,:,3)); blue channel
figure,imhist(rgb2gray(i))

%%Stretching
img1 = imadjust(i,[0.3,0.4],[0.0,0.1])
figure,imshow(img1),title('stretched')
figure,imhist(rgb2gray(img1)),title('Histogram of stretched image')

%%Histogram equilization
img2 = histeq(rgb2gray(i))
figure,imshow(img2),title('Hist eq image')
figure,imhist(img2),title('Histogram of Hist eq image')

