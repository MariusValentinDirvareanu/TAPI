clear all; close all;clc;
ic=imread('Lab05a.jpg');
im=rgb2gray(ic);
iu=abs(imfilter(double(im),[1 1 1;1 1 1;1 1 1]/9));
ig=abs(imfilter(double(im),[1 2 1;2 4 2;1 2 1]/16));
iRE=abs(imfilter(double(im),[0 0 0;0 1 -1;0 0 0]));
iRSE=abs(imfilter(double(im),[0 0 0;0 -1 0;0 0 1]));
iRS=abs(imfilter(double(im),[0 0 0;0 -1 0;0 1 0]));
iRSV=abs(imfilter(double(im),[0 0 0;0 -1 0;1 0 0]));
il1=uint8((iRE+iRSE+iRS+iRSV)/4);
il2=uint8(sqrt((iRE.^2+iRSE.^2+iRS.^2+iRSV.^2)/4));
ilinf=uint8(max(max(max(iRE,iRSE),iRS),iRSV));
figure(1)
subplot(2,2,1)
imshow(il1)
subplot(2,2,2)
imshow(il2)
subplot(2,2,3)
imshow(ilinf)
subplot(2,2,4)
imshow(im)

figure(2)
subplot(2,3,1)
imshow(im)
subplot(2,3,2)
imshow(uint8(iRE))
subplot(2,3,3)
imshow(uint8(iRSE))
subplot(2,3,4)
imshow(uint8(iRS))
subplot(2,3,5)
imshow(uint8(iRSV))

