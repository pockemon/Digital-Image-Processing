clc
clear all
a = imread('cameraman.tif')
af = fftshift(fft2(a));
figure,imshow(fftshift(af))
af1=log(1+abs(af));
fm = max(af1(:));
figure,imshow(im2uint8(af1/fm))

[x,y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2+y.^2);
c = z<15;
figure,imshow(c)

af2 = af1.*c;
af2=log(1+abs(af2));
fm = max(af2(:));
figure,imshow(im2uint8(af2/fm))

c = z<5;
af2 = af1.*c;
af22=log(1+abs(af2));
fm = max(af22(:));
figure,imshow(im2uint8(af22/fm))

af3 = ifft2(af22)
af3= abs(af3);
fm = max(af3(:));
figure,imshow(af3/fm)

