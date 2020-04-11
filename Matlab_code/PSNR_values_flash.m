%% Compute the PSNR for all restored vs original figures
clear all
close all
clc

fileDir = fileparts(mfilename('fullpath'));
cd([fileDir,'\..\'])
Folder = fullfile([fileDir, '/../']);
addpath(Folder);
%% Barbara
barbara_o = imread('Good_images/barbara.png');
barbara_r = rgb2gray(imread('Results/Barbara_restored.png'));

PSNR_barbara = psnr(barbara_o,barbara_r);

%% Boat
boat_o = imread('Good_images/boat_512.png');
boat_r = rgb2gray(imread('Results/Boat_restored.png'));

PSNR_boat= psnr(boat_o,boat_r);

%% House
house_o = imread('Good_images/house_gray.png');
house_r = rgb2gray(imread('Results/House_restored.png'));

PSNR_house= psnr(house_o,house_r);

%% Lena
lena_o = imread('Good_images/lena512gray.png');
lena_r = rgb2gray(imread('Results/Lena_restored.png'));

PSNR_lena= psnr(lena_o,lena_r);

%% Peppers
peppers_o = imread('Good_images/Peppers.png');
peppers_r = rgb2gray(imread('Results/Peppers_restored.png'));

PSNR_peppers= psnr(peppers_o,peppers_r);

%% Cameraman
cman_o = imread('Good_images/cameraman_512.png');
cman_r = rgb2gray(imread('Results/Cameraman_restored.png'));

PSNR_cman= psnr(cman_o,cman_r);

%% Couple
couple_o = imread('Good_images/couple.png');
couple_r = rgb2gray(imread('Results/Couple_restored.png'));

PSNR_couple= psnr(couple_o,couple_r);

%% Finger
finger_o = imread('Good_images/fingerprint1.png');
finger_r = rgb2gray(imread('Results/Finger_restored.png'));

PSNR_finger = psnr(finger_o,finger_r);

%% Hill
hill_o = imread('Good_images/goldhill.png');
hill_r = rgb2gray(imread('Results/Hill_restored.png'));

PSNR_hill = psnr(hill_o,hill_r);

%% Man
man_o = imread('Good_images/man512.png');
man_r = rgb2gray(imread('Results/Man_restored.png'));

PSNR_man = psnr(man_o,man_r);

%% Mountain
mountain_o = imread('Good_images/mountain512.png');
mountain_r = rgb2gray(imread('Results/Mountain_restored.png'));

PSNR_mountain = psnr(mountain_o,mountain_r);

%% Kate
kate_o = imread('Good_images/kate.png');
kate_r = imread('Results/Kate_restored.png');

PSNR_kate = psnr(kate_o,kate_r);


%% PSNR results comparison

Reproduced_PSNR = [33.98;32.96;32.57;35.63;34.39;41.48;29.64;32.48;33.04;28.15;22.64];

DeepImagePrior_PSNR = [32.22;33.06 ;39.16;36.16;33.05 ;29.8;32.52;32.84;32.77;32.20;34.54];

Papayan_PSNR = [28.14;31.44;34.58;35.04;31.11;27.90;31.18;31.34;32.35;31.92;28.05];


%% Reproduced vs Deep Image Prior

mean_diff_rep_dip = mean(abs(Reproduced_PSNR - DeepImagePrior_PSNR));
std_diff_rep_dip = std(abs(Reproduced_PSNR - DeepImagePrior_PSNR));

%% Reproduced vs Papayan
mean_diff_rep_pap = mean(abs(Reproduced_PSNR - Papayan_PSNR));
std_diff_rep_pap = std(abs(Reproduced_PSNR - Papayan_PSNR));

%% Flash no-flash network

noflash_o = imread('Good_images/No-Flash_original_corrupted.png');
noflash_r = imread('Results/Flash-no_Flash_restored.png');
noflash_r2 = imread('Results/No-flash_restored_inpainting.png');
noflash_r3 = imread('Results/no_Flash_restored_denoising.png');
noflash_r4 = imread('Results/NoFlash_mask_inpainting_num_iter_2001.png');
noflash_r5 = imread('Results/no_Flash_restored_denoising_6000it.png');
noflash_r6 = imread('Results/Flash-no_Flash_restored_3001it.png');
flash_o = imread('data/flash_no_flash/cave01_00_flash.jpg');
flash_o = flash_o(2:705,4:771,:);
% ---- Flash no flash ---- %
% 601 iterations
% PSNR between reconstructed no-flash image 
% using flash image and the original noisy no-flash image
PSNR_flashnflash1 = psnr(noflash_r,noflash_o);

% 3001 iterations
% PSNR between reconstructed no-flash image 
% using flash image and the original noisy no-flash image
PSNR_flashnflash2 = psnr(noflash_r6,noflash_o);

PSNR_flashnflash11 = psnr(noflash_r6,noflash_r);

% ---- Inpainting ---- %
% Using no mask%

% PSNR between reconstructed no-flash image 
% using inpainting and the original noisy no-flash image
PSNR_flashnflash3 = psnr(noflash_r2,noflash_o);

% PSNR between the two reconstructions (flash and inpaintig) of the no-flash image
PSNR_flashnflash4 = psnr(noflash_r2,noflash_r);

% Using a mask%

% PSNR between reconstructed no-flash image 
% using inpainting with mask 0.5p and the original noisy no-flash image
PSNR_flashnflash5 = psnr(noflash_r4,noflash_o);

% PSNR between the two reconstructions (flash and inpaintig with mask) of the no-flash image
PSNR_flashnflash6 = psnr(noflash_r4,noflash_r);


% ---- Denoising ---- %
% Denoising 2400 iterations

% PSNR between reconstructed no-flash image 
% using denoising and the original noisy no-flash image
PSNR_flashnflash7 = psnr(noflash_r3,noflash_o);

% PSNR between the two reconstructions (flash and denoising) of the no-flash image
PSNR_flashnflash8 = psnr(noflash_r3,noflash_r);

% Denoising 600 iterations

% PSNR between reconstructed no-flash image 
% using denoising and the original noisy no-flash image
PSNR_flashnflash9 = psnr(noflash_r5,noflash_o);

% PSNR between the two reconstructions (flash and denoising) of the no-flash image
PSNR_flashnflash10 = psnr(noflash_r5,noflash_r);

% --- Compare to Flash image --- %
% PSNR_noisytflash = psnr(flash_o,noflash_o);
% PSNR_flash1 = psnr(noflash_r2,flash_o);

% Table
Cols ={'Noisy_no_Flash','Paper_FnF_600it'};
Rows = {'Paper_FnF_600it','FnF_3001it','Inp_noMask','Inp_Mask_0.5p','Denoise_2400it','Denoise_600it'};
Col1 = [PSNR_flashnflash1;PSNR_flashnflash2;PSNR_flashnflash3;PSNR_flashnflash5;PSNR_flashnflash7;PSNR_flashnflash9];
Col2 = [inf;PSNR_flashnflash11;PSNR_flashnflash4;PSNR_flashnflash6;PSNR_flashnflash8;PSNR_flashnflash10];
T = table(Col1,Col2,'VariableNames',Cols,'RowNames',Rows);
disp(T);
