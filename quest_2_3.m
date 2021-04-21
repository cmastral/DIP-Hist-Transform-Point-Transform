%%
close all;
clear all;
clf;
% Load image, and convert it to gray-scale 
x = imread('lena.bmp'); 
x = rgb2gray(x); 
x = double(x) / 255;
%histogram of intensity values 
[hn, hx] = hist(x(:), 0:1/255:1); 
%%

%1
f=@(x)unifpdf(x,0,1); %function pointer
d=0:1/10:1;
h=pdf2hist(d,f);      %h pou thelw na proseggisw

M=size(d);
M=M(1,2);
for i=1:(M-1)
    v(i)=(d(i)+d(i+1))/2;
end
figure(1)
bar(v,h, 'BarWidth',0.01); %hist to opoio theloume na proseggizei to hist ths telikis eikonas

y=histtransform(x, h, v);  %hist
[yn1, yx1] = hist(y(:), v); % istogramma ths metasximatismenis eikonas
yn1=yn1/256^2;  %kanonikopoihsh hist me pososto kai oxi me plithos ston katakoryfo aksona
figure(2)
bar(yx1, yn1,'BarWidth',0.01); %kanonikopoihmeno istogramma
C=sum(h); %epalitheusi

figure(3)
imshow(y) %teliki eikona
%%
%2
f=@(x)unifpdf(x,0,2); %function pointer
d=0:1/5:2;
h=pdf2hist(d,f);      %h pou thelw na proseggisw

M=size(d);
M=M(1,2);
for i=1:(M-1)
    v(i)=(d(i)+d(i+1))/2;
end
v=v/2;  %kanonikopoihsh

figure(4)
bar(v,h, 'BarWidth',0.01); %hist to opoio theloume na proseggizei to hist ths telikis eikonas

y=histtransform(x, h, v);  %hist
[yn1, yx1] = hist(y(:), v); % istogramma ths metasximatismenis eikonas
yn1=yn1/256^2;  %kanonikopoihsh hist me pososto kai oxi me plithos ston katakoryfo aksona
figure(5)
bar(yx1, yn1,'BarWidth',0.01); %kanonikopoihmeno istogramma
C=sum(h); %epalitheusi

figure(6)
imshow(y)   %teliki eikona 

%%
%3
f=@(x) normpdf(x,0.5,0.1);
d=0:1/11:1;
h=pdf2hist(d,f);
M=size(d);
M=M(1,2);
for i=1:(M-1)
    v3(i)=(d(i)+d(i+1))/2;
end
C=sum(h);
figure(8)
bar(v3,h,'BarWidth',0.01);

y=histtransform(x, h, v3);
[yn,yx]=hist(y(:),v3);
yn=yn/256^2;
C=sum(yn);
figure(9)
bar(yx,yn,'BarWidth',0.01);
figure(10)
imshow(y)

