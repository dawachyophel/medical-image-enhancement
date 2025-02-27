%% Title: Medical image enhancement strategy based on morphologically processing of residuals using a special kernel

%% Created by Dawa Chyophel Lepcha

%% INPUTS
% x --> is a given unclear image
% w9 -- > kernels 1-20

%% OUTPUT
% g9 --> sharpened image.

%% Starting implementation %%
clear all; close all; clc

%% reading image
x = im2double(imread('10-52-09.jpg'));
figure, imshow(x); title('Original')

%% Morphologically processing of residuals 

t = 0.05;   % t - amplitude threshold
s = 3;    % s - size threshold
c = 2.4;  % c - contrast coefficient
sigma = 10; % sigma of the Gaussian filter

imout = mpr(x,sigma,t,s,c);  % imout - output (filtered) image


%% Applying special kernal set 

w9 = [0 -1 0; -1 5 -1; 0 -1 0;]; 

%% Convolution Process
g9 = imfilter(imout, w9, 'symmetric', 'conv');

%% Display the results
figure, imshow(g9); title('Sharpened')
% imwrite(g9,'out_Kernel.jpg')