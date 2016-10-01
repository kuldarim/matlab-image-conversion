load trees;             %# Load the image data
I = ind2gray(X,map);    %# Convert indexed to grayscale
level = graythresh(I);  %# Compute an appropriate threshold
BW = im2bw(I,level);
imshow(BW);

figure
picture = imread('peppers.png');
TRESHOLD = 128;
picture = custom_im2bw(picture, TRESHOLD);
imshow(picture);
