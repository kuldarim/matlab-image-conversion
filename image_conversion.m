% Load the image data
load trees;           
% change the naming of the variables
treeImage = X;
treeColorMap = map;

% Convert indexed to grayscale
matlabGray = ind2gray(treeImage, treeColorMap); 
% Compute an appropriate threshold
treshholdLevel = graythresh(matlabGray);  
matlabIm2bw = im2bw(matlabGray, treshholdLevel);

customInd2Gray = custom_ind2gray(treeImage, treeColorMap);
customTreshholLevel = 0.4980;
customIm2bw = custom_im2bw(customInd2Gray, customTreshholLevel);

figure; 
subplot(2,2,1); imshow(matlabGray);title('matlabInd2Gray');
subplot(2,2,2); imshow(customInd2Gray);title('customInd2Gray');
subplot(2,2,3); imshow(matlabIm2bw);title('matlabIm2bw');
subplot(2,2,4); imshow(customIm2bw);title('customIm2bw');

% Calculate snr values of matlab
[ps1, snr] = psnr(customInd2Gray, matlabGray);
fprintf('\n The matlabGray SNR value is %0.4f \n', snr);


