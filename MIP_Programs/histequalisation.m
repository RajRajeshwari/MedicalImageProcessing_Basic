% histeq works only on 2D inputs i.e. gray scale or tif whereas doesnt work on png or jpg because they are 3D i.e., R-G-B. 
% To make it work on a colourful RGB image, grey level slicing needs to be
% done or rgb2gray
clc
clear all
close all
a= imread('F:\medical_images\images_7.jpg');
% a= imread('F:\medical_images\brain_surface.gif'); %no slicing req since
% its already tif
a= rgb2gray(a); 
% a(:,:,2); %greylevel slicingb since the input image is jpg i.e., RGB
b= histeq(a);
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(b),title('After histogram equalisation')
subplot(2,2,3),imhist(a),title('original image')
subplot(2,2,4),imhist(b),title('After histogram equalisation')