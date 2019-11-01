function [  ] = ffts(f)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
f1 = 1+log(1+abs(f));
m = max(f1(:))
figure,imshow(im2uint8(f1/m))
end

