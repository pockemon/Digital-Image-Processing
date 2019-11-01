function [  ] = iffts(f)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
f1 = abs(f);
m = max(f1(:))
figure,imshow(f1/m)
end

