% Load the image data
load trees;
image = X;
colorMap = map;
% ------------------MATLAB------------------------------------------------
% Convert indexed to grayscale using matlab function
matlabGray = ind2gray(image, colorMap); 
% Compute an appropriate threshold using matlab function
treshholdLevel = graythresh(matlabGray);
% Compute an appropriate threshold using matlab function
matlabIm2bw = im2bw(matlabGray, treshholdLevel);

% ------------------CUSTOM------------------------------------------------
% Convert indexed to grayscale using custom function
customInd2Gray = custom_ind2gray(image, colorMap);
customTreshholLevel = 0.4980;
% Convert indexed to bw using custom function
customIm2bw = custom_im2bw(customInd2Gray, customTreshholLevel);

% ------------------CONVERT BACK------------------------------------------

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
figure;imshow(matlabIm2bw);
matlabBWUint8 = uint8(matlabIm2bw * 110);
figure;imshow(matlabBWUint8, colorMap);

%BW images custom
figure;imshow(customIm2bw);
customBWUint8 = uint8(customIm2bw * 110);
figure;imshow(customBWUint8, colorMap);

% ------------------COMPARE---------------------------------------------
RGB = ind2rgb(image, map);
RGBMatlabGray = ind2rgb(matlabGrayUint8, colorMap);
RGBCustomGray = ind2rgb(customGrayUint8, colorMap);
RGBMatlabBW = ind2rgb(matlabBWUint8, colorMap);
RGBCustomBW = ind2rgb(customBWUint8, colorMap);
%compare gray

% % Calculate snr values of matlab
[ps1, snr1] = psnr(RGBMatlabGray, RGB);
fprintf('\n The RGBMatlabGray SNR value is %0.4f \n', snr1);
[ps2, snr2] = psnr(RGBCustomGray, RGB);
fprintf('\n The RGBCustomGray SNR value is %0.4f \n', snr2);
% 
% %compare bw
[ps3, snr3] = psnr(RGBMatlabBW, RGB);
fprintf('\n The RGBMatlabBW SNR value is %0.4f \n', snr3);
[ps4, snr4] = psnr(RGBCustomBW, RGB);
fprintf('\n The RGBCustomBW SNR value is %0.4f \n', snr4);
