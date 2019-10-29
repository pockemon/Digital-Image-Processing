close all;
i = imread('lapla.jpeg');

%laplacian filter
H = fspecial('laplacian')

blur = imfilter(i,H)

figure,imshow(i),title('Original image')
figure,imshow(blur),title('Edge detected image')