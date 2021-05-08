clc;
clear all;

% Loading the gray scale image 
grayScale=imread('2017A8PS0691G.jpg');

% Corrupting the Image with gaussian noise with defaulalt parameters
CorruptedImage1=imnoise(grayScale,'gaussian');
% Corrupting the Image with gaussian noise with mean 0 and variance 0.012
CorruptedImage2=imnoise(grayScale,'gaussian',0,0.012);
% Corrupting the Image with gaussian noise with mean 0 and variance 0.015
CorruptedImage3=imnoise(grayScale,'gaussian',0,0.015);
% Corrupting the Image with gaussian noise with mean 0 and variance 0.02
CorruptedImage4=imnoise(grayScale,'gaussian',0,0.02);
% Corrupting the Image with gaussian noise with mean 0 and variance 0.025
CorruptedImage5=imnoise(grayScale,'gaussian',0,0.025);


% Plotting the Corrupted Images
figure;
subplot(151)
imshow(CorruptedImage1),title("Corrupted Image 1");
subplot(152)
imshow(CorruptedImage2),title("Corrupted Image 2");
subplot(153)
imshow(CorruptedImage3),title("Corrupted Image 3");
subplot(154)
imshow(CorruptedImage4),title("Corrupted Image 4");
subplot(155)
imshow(CorruptedImage1),title("Corrupted Image 5");


% Reconstructing the Orignal Image by taking average across all the images
ReconstructedImage_Raw=((CorruptedImage1./5)+(CorruptedImage2./5)+(CorruptedImage3./5)+(CorruptedImage4./5)+(CorruptedImage5./5));
% Applying Weiner Filter
Im_Weiner=wiener2(ReconstructedImage_Raw);

% Comparing the Orignal Image to the Reconstructed Image
figure;
subplot(121)
imshow(grayScale),title("Orignal Image");
subplot(122)
imshow(Im_Weiner),title("Reconstructed Image");



