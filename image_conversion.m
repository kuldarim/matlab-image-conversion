load trees;             %# Load the image data
I = ind2gray(X,map);    %# Convert indexed to grayscale
level = graythresh(I);  %# Compute an appropriate threshold
BW = im2bw(I,level);
imshow(BW);

figure
pic = imread('peppers.png');

TRESHOLD = 128;

for mm = 1:size(pic,1)
    for nn = 1:size(pic,2)
        if pic(mm,nn,1) < 128 && pic(mm,nn,2) < 128 && pic(mm,nn,3) < 128
            gsc = 0;
            pic(mm,nn,:) = [gsc gsc gsc];
        else
            gsc = 255;
            pic(mm,nn,:) = [gsc gsc gsc];
        end
    end
end
imshow(pic);

% grayImage = rgb2gray(rgbImage);
% figure;
% imshow(grayImage);
% 
% backToRGB = ind2rgb(grayImage, colormap();
% figure;
% imshow(backToRGB);