i = imread('cameraman.tif')
a = i>120
a1 = double(i)
a1 = a1+100
a2 = a1-100
figure(),imshow(a)
figure(),imshow(uint8(a1))
figure(),imshow(uint8(a2))