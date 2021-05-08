clc;
clear all;

% Loading the image from question 5
grayScale=imread('image_gaussian.jpg');

% Defining the Laplacian Filter
H = fspecial('laplacian',0.8);

% Applying the filter
im_edge=imfilter(grayScale,H,'replicate');

% Plotting and Comparing the Results
figure;
subplot(121);
imshow(grayScale),title("Output from Q5");
subplot(122);
imshow(im_edge,[]),title("Image with Laplacian filter");
