i = imread('cameraman.tif')
figure(),imshow(i)
a = i>120
a1 = double(i)
a1 = a1+100
a2 = a1-100
%figure(),imshow(a)
%figure(),imshow(uint8(a1))
%figure(),imshow(uint8(a2))

b = imadd(i,100)
figure(),imshow(uint8(b))
b = imsubtract(i,30)
figure(),imshow(uint8(b))
b = immultiply(i,0.5)
figure(),imshow(uint8(b))
b = imdivide(i,0.5)
figure(),imshow(uint8(b))
b = imcomplement(i)
figure(),imshow(uint8(b))
