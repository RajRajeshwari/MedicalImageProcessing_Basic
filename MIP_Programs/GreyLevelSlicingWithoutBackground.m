
clc
clear all
close all
x= imread('H:\medical_images\tissue.png');
x= x(:,:,1);
%rgb2gray(x);
  
% x= imresize(x,[256 256]);
y= double(x);

[m,n]= size(y);
L= double(255);
% a=200;
% b=230;
a= double(round(L/1.60));
b= double(round(2*L/2));
for i=1:m
    for j= 1:n
        if (y(i,j)>=a & y(i,j)<=b)
            z(i,j)=L;
        else
            z(i,j)=0;
        end
    end
end
imshow(uint8(y));
figure, imshow(uint8(z));
figure, imhist(x);

