clc;
close all;
clear all;
im= imread('F:\medical_images\images_7.jpg')
im=im(:,:,1);
fc=20;
n=1;
[co ro]= size(im);
cx= round(co/2);
cy= round(ro/2);
imf=fftshift(fft2(im));
H= zeros(co,ro);
for i=1:co
    for j=1:ro
        d=(i-cx).^2 +(j-cy).^2
        if d~=0
            H(i,j)= 1/(1+(((fc*fc)/d).^(2*n)))% butterworth filter prep
        end
    end
end
outf= imf.*H;
out= abs(ifft2(outf));
subplot(2,3,1),imshow(im),title('Original Img')
subplot(2,3,2),imshow(uint(out)),title('HPF Image');
subplot(2,3,3),imshow(imf),title('OI in freq domain');
subplot(2,3,4),imshow(outf),title('HPF in freq domain');
%imshow(imf-outf)
%imshow(abs(ifft2(imf-outf)),
subplot(2,3,5),imshow(H),title('2D view of H');
subplot(2,3,6),surf1(H),title('3D vie of H');
