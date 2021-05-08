clc;
clear all;

% Loading the gray scale image 
grayScale=imread('2017A8PS0691G.jpg');

% Defining the filter wit a 3x3 kernel
filter=fspecial('gaussian', [3 3],1.2);

% Applying the transformation
image_gaussian=imfilter(grayScale,filter,'replicate');

% Plotting and Comparing the Results
figure;
subplot(121);
imshow(grayScale),title("Orignal Image");
subplot(122);
imshow(image_gaussian),title("Image with Gaussian Filter");

%Saving the image
imwrite(image_gaussian,'image_gaussian.jpg')