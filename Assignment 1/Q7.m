clc;
clear all;

% Loading the gray scale image 
grayScale=imread('2017A8PS0691G.jpg');

% Applying various edge detection techniques
CannyEdge=edge(grayScale,'Canny',0.1);
PreWittEdge=edge(grayScale,'prewitt');
SobelEdge=edge(grayScale,'sobel');

% Plotting to compare the results
figure;
subplot(131);
imshow(CannyEdge,[]),title("Edge detection using Canny");
subplot(132);
imshow(PreWittEdge,[]),title("Edge detection using Prewitt");
subplot(133);
imshow(SobelEdge,[]),title("Edge detection using Sobel");