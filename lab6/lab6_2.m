clear all; close all;clc;
ic=imread('Lab06.jpg');
im=rgb2gray(ic);
imma=im;
immg=imma;% 0 in 1
immarm=imma;% 0 in 1
imca2=imma;
imca1=imma;
imcam2=imma;% 0 in 1
imp2=imma;
imp3=imma;
imp4=imma;
imp1pe2=imma;
for i=2:size(im,1)-1
    for j=2:size(im,2)-1
        c=double([im(i-1,j-1:j+1) im(i,j-1:j+1) im(i+1,j-1:j+1)]);
        imma(i,j)=uint8(sum(c)/9);
        immg(i,j)=1;
        immarm(i,j)=1;
        imca2(i,j)=uint8(sum(c.^3)/sum(c.^2));
        imca1(i,j)=uint8(sum(c.^2)/sum(c));
        imcam2(i,j)=uint8(sum(c.^3)/sum(c.^2));
        imp2(i,j)=uint8(sqrt(sum(c.^2)/9));
        imp3(i,j)=uint8((sum(c.^3)/9)^(1/3));
        imp4(i,j)=uint8((sum(c.^4)/9)^(1/4));
        imp1pe2(i,j)=1;
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