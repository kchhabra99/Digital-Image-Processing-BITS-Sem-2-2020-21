% Reading the Image 
input_image = imread('Sample Image 1.jpeg');

% Using MATLAB's OCR function to get ocrResults
ocrResults = ocr(input_image);

% Inserting Annotations
Iocr = insertObjectAnnotation(input_image, 'rectangle',ocrResults.WordBoundingBoxes,ocrResults.WordConfidences,'FontSize',20);

% Plotting the output
figure; imshow(Iocr);

% Saving the image output
imwrite(Iocr,'Output Image 1.png');

% Saving the results in a text file
filehan=fopen('Text.txt','w');
fwrite(filehan,ocrResults.Text);
fclose(filehan);