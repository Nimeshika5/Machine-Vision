clear all
clc
i = imread('img1.jpg');
gs = rgb2gray(i);
nscore=niqe(gs);
fprintf("Image score for Grayscale image: %0.2f.\n", nscore)
bw = imbinarize(gs);
InvertedBW = imcomplement(bw);
subplot(1, 2, 1)
imshow(bw)
title('Black and white Image');
subplot(1, 2, 2)
imshow(InvertedBW)
title('Inverted B&W image');
