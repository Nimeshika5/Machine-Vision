clear all
clc
image = imread('img1.jpg'); 
stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]); subplot(2,2,1), imshow(image), title('Original Image'); 
subplot(2,2,2), imshow(stretched_Image), title('Strethced Image'); 
subplot(2,2,3), imhist(image), title('Histogram of Original Image'); subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');
nscore=niqe(image);
nscoree=niqe(stretched_Image);
fprintf("Image score for orginal image: %0.2f.\n", nscoree)
fprintf("Image score for histogram equalized image: %0.2f.\n", nscore)
