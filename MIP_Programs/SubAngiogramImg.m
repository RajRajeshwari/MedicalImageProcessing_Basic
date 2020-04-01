clear
img1=imread('F:\medical_images\DSA1.jpg');
img2=imread('F:\medical_images\DSA2.jpg');
resimg=(img1- img2);
colormap(gray);
image(resimg)