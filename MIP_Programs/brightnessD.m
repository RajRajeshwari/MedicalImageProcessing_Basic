%Brightness Supression
clc
clear all
close all
a=imread('H:\medical_images\download.jpg');
b= a-40; %can be without double too
imshow(a),title('original image');
figure, imshow(uint8(b)),title('Suppresed image');