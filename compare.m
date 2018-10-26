%Read Original & Distorted Images
origImg = imread('text.png');
distImg = imread('text.png');

%If the input image is rgb, convert it to gray image
noOfDim = ndims(origImg);
if(noOfDim == 3)
    origImg = rgb2gray(origImg);
end

noOfDim = ndims(distImg);
if(noOfDim == 3)
    distImg = rgb2gray(distImg);
end

%Size Validation
origSiz = size(origImg);
distSiz = size(distImg);
sizErr = isequal(origSiz, distSiz);
if(sizErr == 0)
    disp('Error: Original Image & Distorted Image should be of same dimensions');
    return;
end

%Corrupted percentage according to SNR, and MSE Calculation 
[peaksnr,snr] = psnr(distImg,origImg);
corr = 1-(snr/37);
disp('SNR = ');
disp(snr);
disp('Corrputed Percentage according to SNR  = ');
disp(corr);
mse = immse(distImg,origImg);
disp('MSE = ');
disp(mse);

%Average Difference 
[M N] = size(origImg);
difference_matrix = imabsdiff(origImg,distImg);
AD = sum(sum(difference_matrix)) / (M * N);
disp('Average Difference  = ');
disp(AD);
ADperc = AD/255;
disp('Average Difference Percentage  = ');
disp(ADperc);

%Structure Disimilarity 
ssimval = ssim(distImg,origImg);
disp('Structure Similarity = ');
disp(ssimval);
dssim = (1-ssimval);
disp('Structure Disimilarity = ');
disp(dssim);

