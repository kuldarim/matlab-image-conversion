% Load the image data
load trees;
image = X;
colorMap = map;

% Convert indexed to grayscale using matlab function
matlabGray = ind2gray(image, colorMap); 
% Compute an appropriate threshold using matlab function
treshholdLevel = graythresh(matlabGray);
% Compute an appropriate threshold using matlab function
matlabIm2bw = im2bw(matlabGray, treshholdLevel);

% Convert indexed to grayscale using custom function
customInd2Gray = custom_ind2gray(image, colorMap);
customTreshholLevel = 0.4980;
% Convert indexed to bw using custom function
customIm2bw = custom_im2bw(customInd2Gray, customTreshholLevel);
% 
% figure; subplot(2,2,1); 
% imshow(matlabGray);title('matlabInd2Gray');
% subplot(2,2,2); 
% imshow(customInd2Gray);title('customInd2Gray');
% subplot(2,2,3); 
% imshow(matlabIm2bw);title('matlabIm2bw');
% subplot(2,2,4); 
% imshow(customIm2bw);title('customIm2bw');
% 
% % Calculate snr values of matlab
% [ps1, snr] = psnr(customInd2Gray, matlabGray);
% fprintf('\n The matlabGray SNR value is %0.4f \n', snr);

% show original image
figure;
imshow(image, colorMap);

%covert images back

%Gray images matlab
figure;imshow(matlabGray);
matlabGrayUint8 = uint8(matlabGray * 255);
figure;imshow(matlabGrayUint8, colorMap);

% Gray images custom
figure;imshow(customInd2Gray);
customGrayUint8 = uint8(customInd2Gray * 255);
figure;imshow(customGrayUint8, colorMap);

%BW images matlab

%BW images custom


%calculate psnr to compare them


