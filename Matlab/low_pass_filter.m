%Low pass filter-to remove noise from image
%median filter
close all
i = imread('cameraman.tif')
figure,imshow(i)
f = ones(3,3)/9
i1 = filter2(f,i,'same')
figure,imshow(i1/255)
i2 = filter2(f,i,'valid')
figure,imshow(i2/255)
i3 = filter2(f,i,'full')
figure,imshow(i3/255)

f1 =fspecial('average',[3,3])
i4 = filter2(f,i,'same')
figure,imshow(i4/255)
