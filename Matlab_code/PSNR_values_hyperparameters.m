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

cd([fileDir,'\..\Results'])
Folder = fullfile([fileDir, '/../']);
addpath(Folder);
%% Input depth
barbara_i200 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth200.png'));
barbara_i100 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth100.png'));
barbara_i50 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth50.png'));
barbara_i5 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth5.png'));
barbara_i32 = rgb2gray(imread('Hyperparameters/Barbara_restored_i32_r0.03.png'));
barbara_i2 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth2.png'));
barbara_i7 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth7.png'));
barbara_i15 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth15.png'));
barbara_i20 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth20.png'));
barbara_i150 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_150.png'));
barbara_i4 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_4.png'));
barbara_i6 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_6.png'));
barbara_i10 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_10.png'));
barbara_i12 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_12.png'));
barbara_i17 = rgb2gray(imread('Hyperparameters/Barbara_inputdepth_17.png'));

PSNR_i2 = psnr(barbara_o,barbara_i2);
PSNR_i4 = psnr(barbara_o,barbara_i4);
PSNR_i5 = psnr(barbara_o,barbara_i5);
PSNR_i6 = psnr(barbara_o,barbara_i6);
PSNR_i7 = psnr(barbara_o,barbara_i7);
PSNR_i10 = psnr(barbara_o,barbara_i10);
PSNR_i12 = psnr(barbara_o,barbara_i12);
PSNR_i15 = psnr(barbara_o,barbara_i15);
PSNR_i17 = psnr(barbara_o,barbara_i17);
PSNR_i20 = psnr(barbara_o,barbara_i20);
PSNR_i32 = psnr(barbara_o,barbara_i32);
PSNR_i50 = psnr(barbara_o,barbara_i50);
PSNR_i100 = psnr(barbara_o,barbara_i100);
PSNR_i150 =  psnr(barbara_o,barbara_i150);
PSNR_i200 = psnr(barbara_o,barbara_i200);

inputdepth = [2 4 5 6 7 10 12 15 17 20 32 50 100 150 200];
PSNR_i = [PSNR_i2, PSNR_i4, PSNR_i5, PSNR_i6, PSNR_i7, PSNR_i10, PSNR_i12, PSNR_i15, PSNR_i17, PSNR_i20, PSNR_i32, PSNR_i50, PSNR_i100, PSNR_i150, PSNR_i200];

%% Plot input depth
figure
plot(inputdepth,PSNR_i,'-x','LineWidth',2)
hold on
plot(32,PSNR_i32,'o','LineWidth',2)
xlabel('Input depth','FontSize',14)
ylabel('PSNR','FontSize',14)
title('Varied input depth for inpainting of Barbara with 50% missing pixels','FontSize',14)
grid on
legend('Variations of input depth','Original input depth')

%% Reg noise
barbara_r0 = rgb2gray(imread('Hyperparameters/Barbara0reg_noise.png'));
barbara_r003 = rgb2gray(imread('Hyperparameters/Barbara_restored_i32_r0.03.png'));
barbara_r015 = rgb2gray(imread('Hyperparameters/Barbara0.15reg_noise.png'));
barbara_r005 = rgb2gray(imread('Hyperparameters/Barbara0.05reg_noise.png'));
barbara_r004 = rgb2gray(imread('Hyperparameters/Barbara0.04reg_noise.png'));
barbara_r02 = rgb2gray(imread('Hyperparameters/Barbara0.2reg_noise.png'));
barbara_r01 = rgb2gray(imread('Hyperparameters/Barbara0.1reg_noise.png'));
barbara_r001 = rgb2gray(imread('Hyperparameters/Barbara0.01reg_noise.png'));
barbara_r007 = rgb2gray(imread('Hyperparameters/Barbara0.07reg_noise.png'));
barbara_r002 = rgb2gray(imread('Hyperparameters/Barabara0.02reg_noise.png'));
barbara_r008 = rgb2gray(imread('Hyperparameters/Barbara0.08reg_noise.png'));
barbara_r017 = rgb2gray(imread('Hyperparameters/Barbara0.17reg_noise.png'));
barbara_r014 = rgb2gray(imread('Hyperparameters/Barbara0.14reg_noise.png'));
barbara_r012 = rgb2gray(imread('Hyperparameters/Barbara0.12reg_noise.png'));

PSNR_r0 = psnr(barbara_o,barbara_r0);
PSNR_r001 = psnr(barbara_o,barbara_r001);
PSNR_r002 = psnr(barbara_o,barbara_r002);
PSNR_r003 = psnr(barbara_o,barbara_r003);
PSNR_r004 = psnr(barbara_o,barbara_r004);
PSNR_r005 = psnr(barbara_o,barbara_r005);
PSNR_r007 = psnr(barbara_o,barbara_r007);
PSNR_r008 = psnr(barbara_o,barbara_r008);
PSNR_r01 = psnr(barbara_o,barbara_r01);
PSNR_r012 = psnr(barbara_o,barbara_r012);
PSNR_r014 = psnr(barbara_o,barbara_r014);
PSNR_r015 = psnr(barbara_o,barbara_r015);
PSNR_r017 = psnr(barbara_o,barbara_r017);
PSNR_r02 = psnr(barbara_o,barbara_r02);

reg_noise = [0 0.01 0.02 0.03 0.04 0.05 0.07 0.08 0.1 0.12 0.14 0.15 0.17 0.2];
PSNR_r = [PSNR_r0 PSNR_r001 PSNR_r002 PSNR_r003 PSNR_r004 PSNR_r005 PSNR_r007 PSNR_r008 PSNR_r01 PSNR_r012 PSNR_r014 PSNR_r015 PSNR_r017 PSNR_r02];

%% Plot reg_noise
figure
plot(reg_noise,PSNR_r,'-x','LineWidth',2)
hold on
plot(0.03,PSNR_r003,'o','LineWidth',2)
xlabel('Regularization noise standard deviation','FontSize',14)
ylabel('PSNR','FontSize',14)
title('Varied standard deviation of regularization noise for inpainting of Barbara with 50% missing pixels','FontSize',14)
grid on
legend('Variations of standard deviation','Original standard deviation')

%% Num_iter
barbara_n101 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_101.png'));
barbara_n501 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_501.png'));
barbara_n1001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_1001.png'));
barbara_n2001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_2001.png'));
barbara_n3001 = rgb2gray(imread('Hyperparameters/Barbara_numiter3001.png'));
barbara_n4501 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_4501.png'));
barbara_n6001 = rgb2gray(imread('Hyperparameters/Barbara_restored_i32_r0.03.png'));
barbara_n6501 = rgb2gray(imread('Hyperparameters/Barbara_numiter6501.png'));
barbara_n7001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_7001.png'));
barbara_n8001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_8001.png'));
barbara_n9001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_9001.png'));
barbara_n10001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_10001.png'));
barbara_n15001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_15001.png'));
barbara_n12001 = rgb2gray(imread('Hyperparameters/Barbara_num_iter_12001.png'));

PSNR_n101 = psnr(barbara_o,barbara_n101);
PSNR_n501 = psnr(barbara_o,barbara_n501);
PSNR_n1001 = psnr(barbara_o,barbara_n1001);
PSNR_n2001 = psnr(barbara_o,barbara_n2001);
PSNR_n3001 = psnr(barbara_o,barbara_n3001);
PSNR_n4501 = psnr(barbara_o,barbara_n4501);
PSNR_n6001 = psnr(barbara_o,barbara_n6001);
PSNR_n7001 = psnr(barbara_o,barbara_n7001);
PSNR_n8001 = psnr(barbara_o,barbara_n8001);
PSNR_n9001 = psnr(barbara_o,barbara_n9001);
PSNR_n10001 = psnr(barbara_o,barbara_n10001);
PSNR_n12001= psnr(barbara_o,barbara_n12001);
PSNR_n15001 = psnr(barbara_o,barbara_n15001);

num_iter = [101 501 1001 2001 3001 4501 6001 7001 8001 9001 10001 12001 15001];
PSNR_n = [PSNR_n101 PSNR_n501 PSNR_n1001 PSNR_n2001 PSNR_n3001 PSNR_n4501 PSNR_n6001 PSNR_n7001 PSNR_n8001 PSNR_n9001 PSNR_n10001 PSNR_n12001 PSNR_n15001];

%% Plot reg_noise
figure
plot(num_iter,PSNR_n,'-x','LineWidth',2)
hold on
plot(6001,PSNR_n6001,'o','LineWidth',2)
xlabel('Number of iterations','FontSize',14)
ylabel('PSNR','FontSize',14)
title('Varied number of iterations for inpainting of Barbara with 50% missing pixels','FontSize',14)
grid on
legend('Different number of iterations','Original number of iterations')
