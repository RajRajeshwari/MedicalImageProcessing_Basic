clc;
clear all;
close all;
im= imread('F:\medical_images\images_1.jpg');
a=im(:,:,1);
[m n]=size(a);
for i= 1:m,
    for j= 1:n,
        b7(i,j)= bitand(a(i,j),128);
    end
end

%to extract 6th bit plane
for i= 1:m,
    for j= 1:n,
        b6(i,j)= bitand(a(i,j),64);
    end
end

for i= 1:m,
    for j= 1:n,
        b5(i,j)= bitand(a(i,j),32);
    end
end

for i= 1:m,
    for j= 1:n,
        b4(i,j)= bitand(a(i,j),16);
    end
end

for i= 1:m,
    for j= 1:n,
        b3(i,j)= bitand(a(i,j),8);
    end
end

for i= 1:m,
    for j= 1:n,
        b2(i,j)= bitand(a(i,j),4);
    end
end

for i= 1:m,
    for j= 1:n,
        b1(i,j)= bitand(a(i,j),2);
    end
end

for i= 1:m,
    for j= 1:n,
        b0(i,j)= bitand(a(i,j),1);
    end
end

subplot(3,3,1), imshow(im),title('original Image');
subplot(3,3,2), imshow(b0),title('0th bit plane Image');
subplot(3,3,3), imshow(b1),title('1st bit plane Image');
subplot(3,3,4), imshow(b2),title('2nd bit plane Image');
subplot(3,3,5), imshow(b3),title('3rd bit plane Image');
subplot(3,3,6), imshow(b4),title('4th bit plane Image');
subplot(3,3,7), imshow(b5),title('5th bit plane Image');
subplot(3,3,8), imshow(b6),title('6th bit plane Image');
subplot(3,3,9), imshow(b7),title('7th bit plane Image');