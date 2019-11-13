h=h/(size(im,1)*size(im,2));
culori=0:255;
med=culori*h;
var=(culori-med).^2*h;
sigma=sqrt(var);
sk=(1/sigma^3)*(culori-med).^3*h;
kr=(1/sigma^4)*(culori-med).^3*h;
fprintf('%10s \t%8.3f\t%8.3f\t\t%8.3f\t%8.3f\t%8.3f\n',s,med,var,sigma,sk,kr);