clc;
clear;
% Reading the grayScale Image
grayScale=imread('2017A8PS0691G.jpg');

% Plotting to compare the results

% Orignal Image
figure;
subplot(1,2,1);
imshow(grayScale),title("Orignal Image");
subplot(1,2,2);
imhist(grayScale,63),title("Histogram of Orignal Image");

% Equalising the image
Equalised_grayScale = histeq(grayScale);

% Equalised Image
figure;
subplot(1,2,1);
imshow(Equalised_grayScale),title("Equalised Image");
subplot(1,2,2);
imhist(Equalised_grayScale,64), title("Histogram of Equalised Image");