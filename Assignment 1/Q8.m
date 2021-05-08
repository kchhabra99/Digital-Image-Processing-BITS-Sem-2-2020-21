clc;
clear all;

% Loading the gray scale image 
grayScale=imread('2017A8PS0691G.jpg');

% Embossing kernel
h=[-1,-1,-1,-1,0;
    -1,-1,-1,0,1;
    -1,-1,0,1,1;
    -1,0,1,1,1;
    0,1,1,1,1];

% Applying the embossing kernel
embossing=imfilter(grayScale,h,'replicate');

% Plotting and Comparing the Results
figure;
subplot(121);
imshow(grayScale),title("Orignal Image");
subplot(122);
imshow(embossing),title("Image with Embossing Kernel");