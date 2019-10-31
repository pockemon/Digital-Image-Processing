clc
clear all

%%% Bad exposure detection usin histogram
img1 = rgb2gray(imread('gs1.jpeg'));
figure,imshow(img1);
figure,imhist(img1);

img2 = rgb2gray(imread('gs2.jpeg'));
figure,imshow(img2);
figure,imhist(img2);

img3 = rgb2gray(imread('gs3.jpeg'));
figure,imshow(img3);
figure,imhist(img3);

%%High and low contrast image
img4 = rgb2gray(imread('low_cont.jpeg'));
figure,imshow(img4)
figure,imhist(img4);

img5 = rgb2gray(imread('high_cont.jpeg'));
figure,imshow(img5)
figure,imhist(img5);

