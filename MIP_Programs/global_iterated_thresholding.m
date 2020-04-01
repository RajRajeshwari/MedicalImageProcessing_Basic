clc;
clear all;
close all;
I= imread('F:\medical_images\DSA1.jpg');
I= imadjust(I(:,:,1));
ZMax= max(max(I));
ZMin= min(min(I));
TK= (ZMax+ ZMin)/2;
bCal=1;
isize= size(I);
while(bCal)
    iForeground=0;
    iBackground=0;
    ForegroundSum=0;
    BackgroundSum=0;
    for i=1:isize(1)
        for j=1:isize(2)
            tmp= I(i,j);
            if(tmp>= TK)
                iForeground= iForeground+ 1;
                ForegroundSum= ForegroundSum+ double(tmp);
            else
                iBackground= iBackground+ 1;
                BackgroundSum= BackgroundSum+ double(tmp);
            end
        end
    end
    ZO= ForegroundSum/iForeground;
    ZB= BackgroundSum/iBackground;
    TKTmp= uint8((ZO+ZB)/2);
    if(TKTmp==TK)
        bCal=0;
    else
        TK= TKTmp;
    end
end
disp(strcat('Mean=', num2str(TK)));
newI= im2bw(I, double(TK)/255);
subplot(2,1,1),imshow(I),title('Gray Scale Image');
subplot(2,1,2),imshow(newI),title('Iteratively Threshold Image');