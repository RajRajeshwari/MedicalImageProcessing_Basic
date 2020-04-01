%different noise models
clc, close all, clear all;
mygrayimg = imread('F:\medical_images\images_3.jpg');
mygrayimg = imresize(mygrayimg,[256 256],'bilinear');
mygrayimg = rgb2gray(mygrayimg);
figure,imshow(mygrayimg)
title('original image');

% gaussian noise with mean 0 and variance 0.01
gau = imnoise(mygrayimg,'gaussian',0,0.01);
figure, imshow(gau)
title('gaussian image with mean 0 and variance 0.01');

% generating gaussian noise with mean 6 and variance 225
mynoise = 6-sqrt(255)*randn(256,256); %formula
figure,
imshow(mynoise,[]);
title('gernerated gaussian noise with mean 6 and variance 255');

%original image and generated gaussian noise
mynoiseimg = double(mygrayimg(:,:,1)) + mynoise;
figure,
imshow(mynoiseimg);
title('gaussian image with gernerated gaussian noise with mean 6 and variance 255');
