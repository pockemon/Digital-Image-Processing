%Memory error
close all;
i1 = imread('hist1.jpeg');
i2 = imread('hist2.jpeg');

i1_r = i1(:,:,1);
i1_g = i1(:,:,2);
i1_b = i1(:,:,3);

i2_r = i2(:,:,1);
i2_g = i2(:,:,2);
i2_b = i2(:,:,3);

hist_ref_r = imhist(i2_r);
hist_ref_g = imhist(i2_g);
hist_ref_b = imhist(i2_b);

outr = histeq(i1_r,hist_ref_r);
outg = histeq(i1_g,hist_ref_g);
outb = histeq(i1_b,hist_ref_b);

spec(:,:,1) = outr;
spec(:,:,2) = outg;
spec(:,:,3) = outb;

figure,imshow(i1),title('Original Image');
figure,imshow(i2),title('Specified image');
figure,imshow(spec),title('Result image');
