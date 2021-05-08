clc;
clear all;

% Loading the gray scale image and the moon image
grayScale=imread('2017A8PS0691G.jpg');
moon=imread('moon.tif');

% Resizing the moon image so that it is of same dimensions as our object
% image
moon_resize=imresize(moon, [4000,3000]);
% Reducing the brightness of object for better appeal
grayScale=grayScale./2;

% Adding the two images
superimposed=imadd(grayScale,moon_resize,'uint16');
% Showing the output of two images
imshow(superimposed,[]),title("Superimposed Images");

