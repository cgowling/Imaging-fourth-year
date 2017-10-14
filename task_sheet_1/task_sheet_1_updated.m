% task sheet 1 
% Chloe Gowling 03/10/17

clear all; close all; clc;
 
% Question1

r = [1,0;0,0];% says where to put a red
g = [0,1;0,0];
b = [0,0;1,0];

% stack1 = cat(1,r,g,b); % first index selcts which dimension to add in , this one puits arrays in a column
% stack2 = cat(2,r,g,b);% row
stack3 = cat(3,r,g,b);% stacks them in the third dimension

figure(1)
image(stack3);

%Question 2

img = [1,2;3,4];% dark to light
cmap = [1,0,0;0,1,0;0,0,1;1,1,1]; % tells the image what colours to assign to each pixel?? /block  
%         r     g    b    white
figure(2)
image(img);
colormap(cmap);

% Question 3 colour map with 256 shades 
greys = linspace(0,1,256);
colormapGrey = [greys',greys',greys']; % better way of saying this ??

shades = [1:256];  
figure(3)
image(shades);
colormap(colormapGrey)

% Question 4 
% truecolour, indexed image and greyscale
% cactus 1 is a jpeg truecolour 33kb
% cactus 2 is a png  indexed image 117kb
%cactus 3 is greyscale jpg
%%
figure(4)
subplot(2,2,1)
c1 = imread('cactus1.jpg');
imshow(c1);

subplot(2,2,2)
[c2,map] = imread('cactus2.png');
imshow(c2,map);
% doesnt like putting indexed image in subplot ?? may be a version thign
% try on uni computer   
subplot(2,2,3)
c3 = imread('cactus3.jpg');
imshow(c3);

figure(5)
[counts,binLocations] = imhist(c3);
y = cumsum(counts); % this is an array of the cumalative sum each is height ...
... of each bin
%x = linspace(0,256,100)';    
bar(y)
xlabel('greysacle value')

