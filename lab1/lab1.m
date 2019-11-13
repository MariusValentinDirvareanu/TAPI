clear all;close all;clc;
ic=imread('Lab01.jpg'); 
%transforma o imagine color intr-un tensor, adica o
%suprapunere de trei straturi de culoare
% (3 matrice), cate unul pentru culorile rosu, verde, albastru
%elementele unui astfel de tensor sunt numere intregi de la 0 la 255, adica
%din clasa uint8
im=rgb2gray(ic); 
% rgb2gray transforma o imagine color, adica un tensor, intr-o imagine
% monocroma, facand media celor 3 straturi de culoare dupa formula 
% 0.299 * R + 0.587 * G + 0.114 * B
% im1=ic(:,:,1);
% im2=ic(:,:,2);
% im3=ic(:,:,3);
subplot(3,3,[5 6 8 9]);
imshow(ic);
title('Color');
% converteste un tensor in imagine
subplot(3,3,7);
imshow(im);
title('Alb-negru');
ic1=ic;
ic1(:,:,2:3)=zeros(size(ic(:,:,2:3)));
subplot(3,3,1);
imshow(ic1);
title('Rosu');
ic2=ic;
ic2(:,:,1:2:3)=zeros(size(ic(:,:,1:2:3)));
subplot(3,3,2);
imshow(ic2);
title('Verde');
ic3=ic;
ic3(:,:,1:2)=zeros(size(ic(:,:,1:2)));
subplot(3,3,3);
imshow(ic3);
title('Albastru');