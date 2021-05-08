% Reading the Image and converting to Grey scale and Storing
image=imread('IMG_20210214_160213.jpg');
grayscale=rgb2gray(image);
imwrite(grayscale,'2017A8PS0691G.jpg');