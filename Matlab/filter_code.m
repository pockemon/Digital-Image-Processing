%https://in.mathworks.com/help/images/ref/imfilter.html
%https://in.mathworks.com/help/images/ref/fspecial.html

originalRGB = imread('filter.png');
imshow(originalRGB)

h = fspecial('motion', 50, 45);

filteredRGB = imfilter(originalRGB, h);
figure, imshow(filteredRGB)

boundaryReplicateRGB = imfilter(originalRGB, h, 'replicate');
figure, imshow(boundaryReplicateRGB)
