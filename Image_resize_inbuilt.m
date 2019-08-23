a = imread('cameraman.tif');
y = imresize(a,1/2);
figure,imshow(a);
figure,imshow(y);
figure,imagesc(y),colormap(gray);