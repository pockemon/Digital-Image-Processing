
% https://in.mathworks.com/help/images/noise-removal.html
% https://in.mathworks.com/help/images/ref/imfilter.html
% https://in.mathworks.com/help/images/ref/imgaussfilt.html
% https://in.mathworks.com/help/images/ref/ordfilt2.html?searchHighlight=ordfilt2&s_tid=doc_srchtitle

%%%Gaussian smoothing
% https://in.mathworks.com/help/images/apply-gaussian-smoothing-filters-to-images.html
% https://in.mathworks.com/help/images/ref/imgaussfilt.html

%%NLM
%https://in.mathworks.com/help/images/ref/imnlmfilt.html

I = imread('cameraman.tif');
noisyImage = imnoise(I,'gaussian',0,0.0015);
[filteredImage,estDoS] = imnlmfilt(noisyImage);
montage({noisyImage,filteredImage})
title(['Estimated Degree of Smoothing, ', 'estDoS = ',num2str(estDoS)])
