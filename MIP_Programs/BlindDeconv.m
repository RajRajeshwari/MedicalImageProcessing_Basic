clc;
clear all;
close all;

img= imread('F:\medical_images\images_9.jpg');
img= im2double(img(:,:,1));
subplot(1,3,1),imshow(img), title('Original Image');

psf= fspecial('gaussian',7,10);
sd= .0001;
R= imnoise(imfilter(img,psf), 'gaussian', 0, sd);
subplot(1,3,2),imshow(R), title('Degraded Image');

% psf= fspecial('motion',7,10);
% I_degrade= imfilter(img,psf,'circular');
% R=I_degrade;
% subplot(1,3,2),imshow(R), title('Degraded Image');
% 
% repsf= fspecial('motion',10,30);
% out_I= deconvblind(R,psf);
% subplot(1,3,3),imshow(out_I),title('deconv img');

wt= zeros(size(R));
wt(2:end-1, 2:end-1)= 0.5;
initpsf= ones(size(psf));
[Irestore,psfe]= deconvblind(R,initpsf,20,10*sqrt(sd),wt);
subplot(1,3,3),imshow(Irestore),title('Restored image');