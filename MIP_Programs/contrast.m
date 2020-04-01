%contrast change
clc
clear all
close all
b= imread('F:\medical_images\hestain.png');
% b=rgb2gray(a);
c= b*0.5;
d=b*2;
subplot(1,3,1),imshow(b), title('Original image')
subplot(1,3,2), imshow(uint8(c)),title('Contrast increased')
subplot(1,3,3), imshow(uint8(d)),title('Contrast decreased')