clear all; close all;clc;
ic=imread('Lab06.jpg');
im=rgb2gray(ic);
imm=uint8(zeros(size(im)));
imme=imm;
immin=imm;
immax=imm;
im2m=imm;
im2c=imm;
imr=imm;
imdr=imm;
imqr2=imm;
for i=2:size(im,1)-1
    for j=2:size(im,2)-1
        c=[im(i-1,j-1:j+1) im(i,j-1:j+1) im(i+1,j-1:j+1)];
        c=sort(c);
        imm(i,j)=c(5);
        imme(i,j)=(c(1)+c(9))/2;
        immin(i,j)=c(1);
        immax(i,j)=c(9);
        im2m(i,j)=(c(3)+c(4)+c(5)+c(6)+c(7))/5;
        im2c(i,j)=(c(1)+c(2)+c(8)+c(9))/4;
        imr(i,j)=c(9)-c(1);
        imdr(i,j)=((c(6)+c(7)+c(8)+c(9))-(c(1)+c(2)+c(3)+c(4)))/4;
        imqr2(i,j)=c(7)-c(3);
    end
end
figure(1);
subplot(2,3,1)
imshow(imm);
title('Median')
subplot(2,3,2)
imshow(imme);
title('Media extremelor')
subplot(2,3,3)
imshow(immin);
title('Min')
subplot(2,3,4)
imshow(immax);
title('Max')
subplot(2,3,5)
imshow(im2m);
title('2 median')
subplot(2,3,6)
imshow(im2c);
title('2 complementar')


figure(2);
subplot(2,2,1)
imshow(im);
title('Original')
subplot(2,2,2)
imshow(imr);
title('Range')
subplot(2,2,3)
imshow(imdr);
title('Dispersion Range')
subplot(2,2,4)
imshow(imqr2);
title('Quasi-range')

