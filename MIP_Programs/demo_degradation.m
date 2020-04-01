I= checkerboard(8);
n= imnoise((zeros(size(I))),'gaussian',0,.001);
[R,psf]=degradation_model(I,n);