close all;
clc;
clear all;
I = imread('C:\Users\natur\Pictures\Saved Pictures\Alpaca.jpg');
subplot(2,2,1);
imshow(I);
title("raw image");
m = 16;
H = histeq(I, m);  %������ͼ��
subplot(2,2,2);
imshow(H);
title("balanced image");
NoI = imnoise(H,"salt & pepper");
subplot(2,2,3);
imshow(NoI);
title("salt & pepper");
[B,A] = butter(6,0.2,'low');  %��ͨ�˲���
J = filter(B,A,double(NoI));
subplot(2,2,4);
imshow(J);
title("Low pass filtering smoothing");