% Load the image data
load trees;           
% change the naming of the variables
treeImage = X;
treeColorMap = map;

% Convert indexed to grayscale
mGray = ind2gray(treeImage, treeColorMap); 
% Compute an appropriate threshold
treshholdLevel = graythresh(mGray);  
matlabIm2bw = im2bw(mGray, treshholdLevel);

customInd2Gray = custom_ind2gray(treeImage, treeColorMap);
customTreshholLevel = 0.4980;
customIm2bw = custom_im2bw(customInd2Gray, customTreshholLevel);

figure; 
subplot(2,2,1); imshow(mGray);title('matlabInd2Gray');
subplot(2,2,2); imshow(customInd2Gray);title('customInd2Gray');
subplot(2,2,3); imshow(matlabIm2bw);title('matlabIm2bw');
subplot(2,2,4); imshow(customIm2bw);title('customIm2bw');
