clc;
clear all;
close all;

myimageA= imread('G:\medical_images\images.jpg');
myimageadjustA= imresize(myimageA(:,:,1),[256,256]);
mybinaryimageA= im2bw(myimageA);

myimageB= imread('G:\medical_images\images_3.jpg');
myimageadjustB= imresize(myimageB(:,:,1),[256,256]);
mybinaryimageB= im2bw(myimageB);

subplot(4,2,1), imshow(mybinaryimageA), title('Binary Image- A');
subplot(4,2,2), imshow(mybinaryimageB), title('Binary Image- B');

subplot(4,2,3), resultor= ~mybinaryimageA;
imshow(mat2gray(resultor)), title('Complement of Image A');

subplot(4,2,4), resultxor= xor(imresize(mybinaryimageA, [256,256]),imresize(mybinaryimageB, [256,256]));
imshow(mat2gray(resultxor)), title('A XOR B');

subplot(4,2,5), resultor= imresize(mybinaryimageA, [256,256])| imresize(mybinaryimageB, [256,256]);
imshow(mat2gray(resultor)), title('A OR B');

subplot(4,2,6), resultor= imresize(mybinaryimageA, [256,256])&imresize(mybinaryimageB, [256,256]);
imshow(mat2gray(resultor)), title('A AND B');