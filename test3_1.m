close all;
clc;
clear all;
M = imread('C:\Users\natur\Pictures\Saved Pictures\dolphin.jpg');
G = rgb2gray(M);
subplot(2,3,1);
imshow(M);
title("Dolphin");
N = imnoise(M, 'salt & pepper',0.6);
subplot(2,3,2);
imshow(N);
title('salt & pepper');
J = imnoise(M, 'gaussian',0,0.01); %��ֵ0,����var
subplot(2,3,3);
imshow(J);
title('gaussian');
K = imnoise(M, 'poisson');
subplot(2,3,4);
imshow(K);
title("poisson");
%P = imnoise(G, 'localvar',);
%subplot(2,3,5);
%imshow(P);
%title("localvar");
L = imnoise(M, 'speckle',0.1);
subplot(2,3,6);
imshow(L);
title("speckle");