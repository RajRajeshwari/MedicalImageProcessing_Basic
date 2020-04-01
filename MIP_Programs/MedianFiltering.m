clc;
clear all;
close all;

a= imread('F:\medical_images\knee_T1_mri_sagittal.jpg');
b= imnoise(a(:,:,1), 'Salt & Pepper', 0.1);

h1= 1/9 *ones(3,3);
h2= 1/25 *ones(5,5);

c1= conv2(uint8(b), h1, 'same');
c2= conv2(uint8(b), h2, 'same');

c3= medfilt2(b, [3 3]);
c4= medfilt2(b, [5 5]);

subplot(3,2,1), imshow(a),title('original Image');
subplot(3,2,2), imshow(b),title('Salt & Pepper noise');
subplot(3,2,3), imshow(uint8(c1)),title('3x3 Smoothing');
subplot(3,2,4), imshow(uint8(c2)),title('5x5 Smoothing');
subplot(3,2,5), imshow(uint8(c3)),title('3x3 Median Filter');
subplot(3,2,6), imshow(uint8(c4)),title('5x5 Median Filter');