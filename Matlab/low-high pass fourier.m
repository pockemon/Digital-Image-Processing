%low pass filter
I = imread('image.jpg');
If = fft2(I);

mask = zeros(size(If));
mask(x:y,w:z) = 1;

Ifft = fftshift(If).*mask;

final = ifft2(fftshift(Ifft));
imtool(final,[]);



%high pass filter

I = imread('image.jpg');
If = fft2(I);

mask = ones(size(If));
mask(x:y,w:z) = 0;

Ifft = fftshift(If).*mask;

final = ifft2(fftshift(Ifft));
imtool(final,[]);
