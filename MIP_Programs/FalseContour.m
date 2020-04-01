clc;
clear all;
close all;

a= imread('G:\medical_images\images_7.jpg');
a= a(:,:,1);
subplot(3,3,1), imshow(a), title('Original Image');
subplot(3,3,2), imshow(grayslice(a,128), gray(128)), title('Image with 128 gray levels');
subplot(3,3,3), imshow(grayslice(a,64), gray(64)), title('Image with 64 gray levels');
subplot(3,3,4), imshow(grayslice(a,32), gray(32)), title('Image with 32 gray levels');
subplot(3,3,5), imshow(grayslice(a,16), gray(16)), title('Image with 16 gray levels');
subplot(3,3,6), imshow(grayslice(a,8), gray(8)), title('Image with 8 gray levels');
subplot(3,3,7), imshow(grayslice(a,4), gray(4)), title('Image with 4 gray levels');
subplot(3,3,8), imshow(grayslice(a,2), gray(2)), title('Image with 2 gray levels');
% subplot(3,3,9), imshow(grayslice(a,1), gray(1)), title('Image with 1 gray levels');
