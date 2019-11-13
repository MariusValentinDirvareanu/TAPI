clear all;close all;clc;
ibw=zeros(8);
ibw(2:7,2:7)=1;
ibw(2:3,2:3)=0;
ibw(6:7,6:7)=0;
s1=[0 1 0; 1 1 1;0 1 0];
s2=ones(3);
s3=[1 0 0;0 0 0;0 0 1];
% Dilatarile si erodarile lui ibw cu fiecare strel
ids1=imdilate(ibw,s1);
ids2=imdilate(ibw,s2);
ids3=imdilate(ibw,s3);
ies1=imerode(ibw,s1);
ies2=imerode(ibw,s2);
ies3=imerode(ibw,s3);
subplot(3,3,5)
imshow(ibw)
subplot(3,3,1)
imshow(ids1)
subplot(3,3,4)
imshow(ids2)
subplot(3,3,7)
imshow(ids3)
subplot(3,3,3)
imshow(ies1)
subplot(3,3,6)
imshow(ies2)
subplot(3,3,9)
imshow(ies3)