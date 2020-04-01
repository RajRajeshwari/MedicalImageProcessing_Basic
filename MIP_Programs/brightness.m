%Brightness Enhancement
clc
clear all
close all
a=imread('F:\medical_images\mri_brain.jpg');
b= double(a)+40;
subplot(1,3,1),imshow(a),title('original image');
subplot(1,3,2),imshow(uint8(b)),title('Brightness Enhanced image');
c= a-40; %can be without double too
subplot(1,3,3), imshow(uint8(b)),title('Suppresed image');