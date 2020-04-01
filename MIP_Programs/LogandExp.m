clc;
clear all;
close all;
im= imread('F:\medical_images\brain_surface.gif')
[row col wid]=size(im);
if(wid==3)
    im=rgb2gray(im);
end
%Log
for i=1:size(im,1)
    for j=1:size(im,2)
        in=double(im(i,j)+1);
        L(i,j)=log2(in);
    end
end
%Exponential
for i=1:size(im,1)
    for j=1:size(im,2)
        in= double(L(i,j)+1); %in=double(im(i,j)+1);log
        E(i,j)=exp(in);%L(i,j)=log2(in);
    end
end
logT=(L/max(L(:)))*255;
expT=(E/max(L(:)))*255;
subplot(1,3,1),imshow(im),title('Orignial Image');
subplot(1,3,2),imshow(logT,[]),title('LOg transformation');
subplot(1,3,3),imshow(expT,[]),title('Exponential of LOg transformation');
return;
    