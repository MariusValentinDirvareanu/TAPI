clear all; close all; clc;
ic = imread('Lab04.jpg');
im=rgb2gray(ic);
mu=[1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9];
mg=[1/16 2/16 1/16;2/16 4/16 2/16;1/16 2/16 1/16];
ifu=imfilter(im,mu);
subplot(2,3,1)
imshow(im)
title('Original')
subplot(2,3,2)
imshow(ifu)
title('Uniform')
ifg=imfilter(im,mg);
subplot(2,3,3)
imshow(ifg)
title('Gauss')
subplot(2,3,4)
imhist(im)
subplot(2,3,5)
imhist(ifu)
subplot(2,3,6)
imhist(ifg)
disp('________________________________________________________________________');
disp('Imagine       Medie       Varianta        Sigma       Sk          Kr');
disp('________________________________________________________________________');
h=imhist(im); s='Original'; lab04p;
h=imhist(ifu); s='Uniform'; lab04p;
h=imhist(ifg); s='Gauss'; lab04p;
disp('________________________________________________________________________');




