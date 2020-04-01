clear
img= imread('F:\medical_images\ABD_CT.jpg');
depth= max(max(img))- min(min(img));
hist16= zeros(16,1);
for i=1:261
    for j=1:435
        rho=img(i,j);
        b16=floor(rho/17.0)+1; %convert into 16 bit
        hist16(b16,1)=hist16(b16,1)+ 1;
    end
end
bar(hist16);
save('Histogram16.txt', 'hist16','-ascii');
