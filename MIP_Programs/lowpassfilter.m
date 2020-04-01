%low pass filter in frequency domain
clc; close all; clear all;

mygrayimg = imread('F:\medical_images\images_3.jpg');
mygrayimg = imresize(rgb2gray(mygrayimg),[256 256]);
figure,
imshow(mygrayimg)
title('original image');

%find fft
%use the fft2() to get fft of the imagwe
%the log scale of fft image is displayed

myfftimg = fft2(mygrayimg);

%take the logarithmic scale for display
tmp = abs(myfftimg);
mylogimg = log(1 + tmp);

figure,
imshow(mat2gray(mylogimg));
title('fft image');

figure,
imshow(fftshift(mat2gray(mylogimg)));
title('fft image with dc component');

%find size
[m,n] = size(myfftimg);

%create filter array
%the cut off frequrncy 20 is used
low = 20;



%create ideal low pass filter mask
mylowpassmask = ones(m,n); %creating filter matrix of size equal original matrix

% generate values for ideal low pass filter
for u = 1:m
    for v = 1:n
        tmp = (((u-(m+1))/2)^2 + ((v-(n+1))/2)^2);
        raddist = round(sqrt(tmp));
        disp(raddist);
        if raddist > low 
            mylowpassmask(u,v) = 0;
        end
    end
end
 %shift the spectrum to the center
 f1 = fftshify(mylowpassmask);
 
 %apply the filter f1 to the fft of the image
 reimg1 = myfftimg.*f1;
 
 %apply the inverse fft to the filtered image to display low pass image
 r1 = abs(ifft2(reimg1));
 figure, 
 imshow(r1,[]);
 title('low pass filter image');