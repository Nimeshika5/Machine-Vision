clc
A = imread('img1.jpg');
Anoise = imnoise(A,'Gaussian',0,0.05);
Ablur = imgaussfilt(A,2);
score = niqe(A);
score_noise = niqe(Anoise);
score_blur = niqe(Ablur);
figure
montage({A,Anoise,Ablur},'Size',[1 3])
title({['Original Image: NIQE score = ', num2str(score),'    |    Noisy Image: NIQE score = ', num2str(score_noise),'    ' '|    Blurred Image: NIQE score = ', num2str(score_blur)]}, 'FontSize',12)