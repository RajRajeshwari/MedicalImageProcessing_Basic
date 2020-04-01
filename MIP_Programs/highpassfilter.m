%ideal high pass filter in the frequency domain

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
high = 62;




%create ideal high pass mask
myhighpassmask  = ones(m,n); %creating filter matrix of size equal original matrix

% generate values for ideal high pass filter
for u = 1:m
    for v = 1:n
        tmp = (((u-(m+1))/2)^2 + ((v-(n+1))/2)^2);
        raddist = round(sqrt(tmp));
        disp(raddist);
        if raddist > low 
            myhighpassmask(u,v) = 0;
        end
    end
end
%shift the spectrum to the center
 f1 = fftshify(myhighpassmask);
 
 %apply the filter f1 to the fft of the image
 reimg1 = myfftimg.*f1;
 
 %apply the inverse fft to the filtered image to display low pass image
 r1 = abs(ifft2(reimg1));
 figure, 
 imshow(r1,[]);
 title('high pass filter image');