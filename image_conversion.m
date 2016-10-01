%% Loading image and renaming the variables
%# Load the image data
load trees;           
% change the naming of the variables
treeImage = X;
treeColorMap = map;

%% Matlab image conversion
%# Convert indexed to grayscale
matlabInd2Gray = ind2gray(treeImage, treeColorMap); 
%# Compute an appropriate threshold
treshholdLevel = graythresh(matlabInd2Gray);  
matlabIm2bw = im2bw(matlabInd2Gray, treshholdLevel);


%% Custom image conversion
customInd2Gray = custom_ind2gray(treeImage, treeColorMap);
customTreshholLevel = 0.4980;
customIm2bw = custom_im2bw(customInd2Gray, customTreshholLevel);

%% Show the results
figure; 
subplot(2,2,1); imshow(matlabInd2Gray); title('matlabInd2Gray');
subplot(2,2,2); imshow(customInd2Gray); title('customInd2Gray');
subplot(2,2,3); imshow(matlabIm2bw); title('matlabIm2bw');
subplot(2,2,4); imshow(customIm2bw); title('customIm2bw');
