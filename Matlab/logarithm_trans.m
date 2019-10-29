%To reduce the contrast of brighter image
close all
i = imread('cameraman.tif')
d = im2double(i)
x = d
[r,c] = size(d)
factor = 1
for k =1:r
    for j =1:c
        x(k,j) = factor *log(1+ d(k,j));
    end
end
subplot(1,2,1);imshow(d);title('Before');
subplot(1,2,2);imshow(x);title('After');
        