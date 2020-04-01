clc;
clear all;
close all;

CMY= imread('G:\medical_images\knee_T1_mri_sagittal.jpg');
C= CMY;
M= CMY;
Y= CMY;

C(:,:,1)=0;
M(:,:,2)=0;
Y(:,:,3)=0;

subplot(2,2,1), imshow(CMY), title('Original Image');
subplot(2,2,2), imshow(C), title('Red missing');
subplot(2,2,3), imshow(M), title('Green missing');
subplot(2,2,4), imshow(Y), title('Blue missing');