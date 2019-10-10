%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This script is used to calculating the final result

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc

num_classes = 2;   
resign_size = 30;
prob_data_temp = importdata('./info/prob_dcnet.txt');
im_gt = imread('./pic/farmland_gt.bmp');
im_gt = double(im_gt(:,:,1));
[ylen, xlen] = size(im_gt);

predict_label = [];
test_prob = [];
for i = 1:length(prob_data_temp)/num_classes
    prob_temp = prob_data_temp((i-1)*num_classes+1:i*num_classes,:)';
    test_prob = [test_prob;prob_temp];
    predict_label = [predict_label;find(prob_temp==max(prob_temp))];
end

predict_label = predict_label-1;
resultmap = reshape(predict_label,[ylen,xlen]);

[lab_pre,num] = bwlabel(resultmap);

for i = 1:num
    idx = find(lab_pre==i);
    if numel(idx) <= resign_size
        lab_pre(idx)=0;
    end
end

lab_pre = lab_pre>0;
res = uint8(lab_pre)*255;
     
 aa = find(im_gt==0&res~=0);
 bb = find(im_gt~=0&res==0);
 
 FA = numel(aa);
 MA = numel(bb);
 OE = FA + MA; 

CA = 1-OE/(ylen*xlen);  
%imwrite(res,'changemap.jpg','jpg'); 
figure, imshow(res,[]);
