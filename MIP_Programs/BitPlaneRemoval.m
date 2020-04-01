clc;
clear all;
close all;
a= imread('F:\medical_images\knee_T1_mri_sagittal.jpg');
a=a(:,:,1);
[m n]= size(a);
n1= input(' Enter the bitplane no.(8,7,6,5,4,3,2,1) that to be removed');
s= 255-(2^(n1-1));
for i=1:m,
    for j=1:n,
        Out_I(i,j)=bitand(a(i,j),s);
    end
end
subplot(1,2,1), imshow((a)),title('original Image');
subplot(1,2,2), imshow((Out_I)),title('Image after bit removal');