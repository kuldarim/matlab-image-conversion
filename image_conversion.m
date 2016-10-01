%# Load the image data
load trees;           
% change the naming of the variables
treeImage = X;
treeColorMap = map;

%# Convert indexed to grayscale
grayscaleTreeImage = ind2gray(treeImage, treeColorMap); 
%# Compute an appropriate threshold
treshholdLevel = graythresh(grayscaleTreeImage);  
matlabIm2bw = im2bw(grayscaleTreeImage, treshholdLevel);
imshow(matlabIm2bw);

figure
customGrayScale = custom_ind2gray(treeImage, treeColorMap);
customIm2bw = custom_im2bw(customGrayScale, treshholdLevel);
imshow(customIm2bw);
