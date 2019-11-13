clear all; close all; clc;
icb = imread('Lab03b.jpg');
icg = imread('Lab03g.jpg');
icw = imread('Lab03w.jpg');
imb = rgb2gray(icb);
img = rgb2gray(icg);
imw = rgb2gray(icw);
% htilda=imhist(imb);
% subplot(3,3,1)
% imshow(icb)
% subplot(3,3,2)
% imshow(icw)
% subplot(3,3,3)
% imshow(icg)
% subplot(3,3,4)
% imshow(imb)
% subplot(3,3,5)
% imshow(imw)
% subplot(3,3,6)
% imshow(img)
% subplot(3,3,7)
% imhist(imb)
% subplot(3,3,8)
% imhist(imw)
% subplot(3,3,9)
% imhist(img)
clb=0;
chb=165;
clw=190;
chw=255;
clg=150;
chg=255;


clb=clg;
chb=chg;
imb=img;
for c=0:255
    if c<clb
        LUTlinb(c+1)=0;
        LUTlogb(c+1)=0;
        LUTexpb(c+1)=0;
        LUTradb(c+1)=0;
        LUTsquareb(c+1)=0;
    elseif c>chb
        LUTlinb(c+1)=255;
        LUTlogb(c+1)=255;
        LUTexpb(c+1)=255;
        LUTradb(c+1)=255;
        LUTsquareb(c+1)=255;
    else
        LUTlinb(c+1)=round(255*(c-clb)/(chb-clb));
        LUTlogb(c+1)=round(255*log(((c-clb)/(chb-clb))+1)/log(2));
        LUTexpb(c+1)=round(255*(exp((c-clb)/(chb-clb))-1)/(exp(1)-1));
        LUTradb(c+1)=round(255*(sqrt((c-clb)/(chb-clb))));
        LUTsquareb(c+1)=round(255*(((c-clb)/(chb-clb))^2));
    end
end
ilinb=uint8(zeros(size(imb)));
ilogb=uint8(zeros(size(imb)));
iexpb=uint8(zeros(size(imb)));
iradb=uint8(zeros(size(imb)));
isquareb=uint8(zeros(size(imb)));
for i=1:size(imb,1)
    for j=1:size(imb,2)
        ilinb(i,j)=LUTlinb(imb(i,j)+1);
        ilogb(i,j)=LUTlogb(imb(i,j)+1);
        iexpb(i,j)=LUTexpb(imb(i,j)+1);
        iradb(i,j)=LUTradb(imb(i,j)+1);
        isquareb(i,j)=LUTsquareb(imb(i,j)+1);
    end
end
subplot(2,3,1)
imshow(imb)
title('Original')
subplot(2,3,2)
imshow(ilinb)
title('Liniar')
subplot(2,3,3)
imshow(ilogb)
title('log')
subplot(2,3,4)
imshow(iexpb)
title('expo')
subplot(2,3,5)
imshow(iradb)
title('rad')
subplot(2,3,6)
imshow(isquareb)
title('square')
        
