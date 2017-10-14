% task sheet 1 
% Chloe Gowling 03/10/17

clear all; close all; clc;

c3 = single(imread('cactus3.jpg'));
mini = min(c3);
minmin= min(mini)
z=c3 > 100;
x = z.*c3;
y = mean(nonzeros(x))
