% Create bernoulli 50% noise image
p = 0.5;
n = 512;
A=binornd(1,p*ones(n));

noise = figure(1);
imshow(A)
%saveas(noise,'Bern_noise.png')
imwrite(A,'noise_mask1.png','PNG');

B = ones(704,768);
imshow(B)
imwrite(B,'no_mask1.png','PNG');

C = binornd(1,p*ones(704,768));
imshow(C)
imwrite(C,'noise_mask_flash1.png','PNG');