clc;
clear all;
close all;

im= imread('G:\medical_images\images_7.jpg');
im= im(:,:,1);
fc= 10;
imf= fftshift(fft2(im));
[co,ro]= size(im);
cx= round(co/20);
cy= round(ro/2);
H= zeros(co,ro);

for i=1:co
    for j= 1:ro
        d= (i- cx).^2 +(j- cy).^2;
        H(i,j)= exp(-d/2/fc/fc);
    end;
end;

outf= imf.*H;
out= abs(ifft2(outf));
imshow(im), title('Original image'),
figure, imshow(out), title('LP Filtered Image'),
figure, imshow(H), title('2D view of H Image'),
figure, surf(H), title('3D view of H Image'),