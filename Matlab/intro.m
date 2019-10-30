%%%%%%%%%%%%%%% Reading and displaying %%%%%%%%%%%%%
a = imread('cameraman.tif')
imshow(a)
figure()
subplot(221);imshow(a)

b = imread('cameraman.tif')
subplot(224);imshow(b)

imfinfo('cameraman.tif')

colormap(jet)
%colormap(spring)