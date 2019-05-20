close all;
clc;
clear all;
I = imread("C:\Users\natur\Pictures\Saved Pictures\dolphin.jpg");
J = imread('C:\Users\natur\Pictures\Saved Pictures\Alpaca.jpg');
level1 = graythresh(I);
level2 = graythresh(J);
I1 = im2bw(I,level1);   %×ª»»Îª¶þÖµÍ¼Ïñ
J1 = im2bw(J,level2);
rect = [0 0 800 1145];
I2 = imcrop(I1,rect);  %Í¼Ïñ²Ã¼ô
k1 = I2|J1;
k2 = xor(I2,J1);
subplot(2,2,1);
imshow(I2);
title("Dolphin-bin");
subplot(2,2,2);
imshow(J1);
title("Alpaca-bin");
subplot(2,2,3);
imshow(k1);
title("OR");
subplot(2,2,4);
imshow(k2);
title("XOR");