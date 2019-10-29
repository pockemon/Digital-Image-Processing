%%%%%%%%%%%%%%%%% reading rgb/indexed images %%%%%%%%%%%%%

i = imread('flowers.jpg')
imshow(i)
impixelinfo
size(i)
colormap(jet) %does not effect
%imfinfo('flowers.jpg')

b = imread('index.jpeg')
imshow(b)
imfinfo('index.jpeg')