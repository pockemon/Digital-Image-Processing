%Use of median filter to remove salt-pepper noise
close all
i = imread('cameraman.tif')
isp = imnoise(i,'salt & pepper',0.1)

figure,imshow(i),title('original image')
figure,imshow(isp),title('salt and pepper noise')

f = fspecial('average')
a1 = filter2(f,isp)
a2 = medfilt2(isp)

%figure,imshow(a1) - will not work because of float value
figure,imshow(uint8(a1)),title('using averaging')
figure,imshow(a2),title('using median filter')