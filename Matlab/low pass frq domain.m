i = imread('cameraman.tif');
af = fftshift(fft2(i));
figure,imshow(af)

ffts(af)

%low pass filter - less value of c means more blurring
[x,y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2+y.^2);
c = z<15;

af1 = af .* c;
ffts(af1)

af2 = ifft2(af1)
iffts(af2)