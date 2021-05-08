clc;
clear all;

% Loading the gray scale image 
grayScale=imread('2017A8PS0691G.jpg');

% Unsharpening Mask
h=[-1 -1 -1;
    -1 9 -1;
    -1 -1 -1];

% Sharpening the image using the kernel
SharpenedImage_kernel=imfilter(grayScale,h,'replicate');
% Sharpening the image using matlab imsharpen command
SharpenedImage_fx=imsharpen(grayScale,'Radius',1.2,'Amount',8,'Threshold',0);


% Comparing the results
figure;
subplot(131);
imshow(grayScale),title("Orignal Image");
subplot(132)
imshow(SharpenedImage_kernel),title("Sharpened Image using Kernel");
subplot(133)
imshow(SharpenedImage_fx),title("Sharpened Image using imsharpen");
