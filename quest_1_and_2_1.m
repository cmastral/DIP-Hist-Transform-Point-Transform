%%
% Load image, and convert it to gray-scale 
x = imread('lena.bmp'); 
x = rgb2gray(x); 
x = double(x) / 255;
figure(1) %grayscale lena
imshow(x)

% Show the histogram of intensity values 
[hn, hx] = hist(x(:), 0:1/255:1); 
figure(2)  
bar(hx, hn)   %histogram image

%%
% 1. POINTWISE TRANSFORMATION 
y=pointtransform(x,0.1961,0.0392,0.8039,0.9608); %(a)
figure(4)
imshow(y)
title('Transformed image 1.(a)');
%%
z=pointtransform(x,0.5,0,0.5,1); %(b)
figure(5) 
imshow(z)
title('Transformed image 1.(b)');
%%
%2.1
%Case 1
L1 = 10; 
v1 = linspace(0, 1, L1); 
h1 = ones([1, L1]) / L1; 
c1=histtransform(x,h1,v1);
figure(6)
imshow(c1)
title('Transformed image Case 1');
[yn1, yx1] = hist(c1(:), v1); % istogramma ths metasximatismenis eikonas
yn1=yn1/256^2;  %kanonikopoihsh hist me pososto kai oxi me plithos ston katakoryfo aksona
C1=sum(yn1);    %C1=1 epalitheusi 
figure(7)
bar(yx1, yn1,'BarWidth',0.01); %kanonikopoihmeno istogramma
%%
%Case 2
L2 = 20; 
v2 = linspace(0, 1, L2); 
h2 = ones([1, L2]) / L2; 
c2=histtransform(x,h2,v2);
figure(8)
imshow(c2)
title('Transformed image Case 2');
[yn2, yx2] = hist(c2(:),v2); % istogramma ths metasximatismenis eikonas
yn2=yn2/256^2;
C2=sum(yn2);
figure(9)
bar(yx2, yn2,'BarWidth',0.01); %kanonikopoihmeno istogramma
%%
%Case 3
L3 = 10; 
v3 = linspace(0, 1, L3); 
h3 = normpdf(v3, 0.5) / sum(normpdf(v3, 0.5)); 
c3=histtransform(x,h3,v3);
figure(10)
imshow(c3)
title('Transformed image Case 3');
[yn3, yx3] = hist(c3(:), v3); % istogramma ths metasximatismenis eikonas
yn3=yn3/256^2;  %kanonikopoihsh hist me pososto kai oxi me plithos ston katakoryfo aksona
C3=sum(yn3);    %C1=1 epalitheusi 
figure(11)
bar(yx3, yn3,'BarWidth',0.01); %kanonikopoihmeno istogramma

%%
 %2.2
 %sto erwthma auto zhtoumeno htan h synarthsh pdf2hist, 
 %den yphrxe arithmitiki efarmogh
 
%%


