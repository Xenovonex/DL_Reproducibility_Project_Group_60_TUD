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

% PSNR between reconstructed no-flash image 
% using flash image and the original noisy no-flash image
PSNR_flashnflash = psnr(noflash_r,noflash_o);

% PSNR between reconstructed no-flash image 
% using inpainting and the original noisy no-flash image
PSNR_flashnflash2 = psnr(noflash_r2,noflash_o);

% PSNR between the two reconstructions of the no-flash image
PSNR_flashnflash3 = psnr(noflash_r2,noflash_r);