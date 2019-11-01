clc
clear all

[x,y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2+y.^2);
c = z<15;
figure,imshow(c)

cf = fftshift(fft2(c))
cf1 = log(1+abs(cf))
fm1 = max(cf1(:))
figure,imshow(im2uint8(cf1/fm1)) %ringing because of very sharp cut-off

b = 1 ./ (1+(z./15).^2);
cf = fftshift(fft2(b))
cf1 = log(1+abs(cf))
fm1 = max(cf1(:))
figure,imshow(im2uint8(cf1/fm1)) %ringing because of very sharp cut-off
