clc
clear all
close all
a= imread('H:\medical_images\hestain.png');
b=histeq(a);
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(b),title('After histogram equalisation')
subplot(2,2,3),imhist(a),title('original image')
subplot(2,2,4),imhist(b),title('After histogram equalisation')