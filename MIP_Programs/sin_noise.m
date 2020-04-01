%different noise models
clc, close all, clear all;
mygrayimg = imread('F:\medical_images\images_3.jpg');
mygrayimg = imresize(mygrayimg,[256 256],'bilinear');
mygrayimg = rgb2gray(mygrayimg);
figure,imshow(mygrayimg)
title('original image');

%origianl image with sinusoidal noise
[x,y] = meshgrid(1:256,1:256);

mysinnoise = 2 * sin(2*pi/14*x + 2*pi/14*y);
figure,
imshow(mysinnoise,[])
title('generated sinusoidal noise');

mynoiseimg1 = double(mygrayimg(:,:,1)) + mysinnoise;
figure,
imshow(mynoiseimg1,[])
title('sinusoidal img with generated sinusoidal noise');