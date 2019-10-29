close all;
i = imread('edge.jpeg');
i1 = rgb2gray(i)

e1 = edge(i1,'prewitt');
e2 = edge(i1,'sobel');
e3 = edge(i1,'canny');
e4 = edge(i1,'roberts');

figure,imshow(i);
subplot(2,2,1),imshow(e1)
subplot(2,2,2),imshow(e2)
subplot(2,2,3),imshow(e3)
subplot(2,2,4),imshow(e4)