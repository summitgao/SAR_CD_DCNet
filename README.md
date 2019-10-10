This code is for our paper "Change Detection from Synthetic Aperture Radar Images Based on Channel Weighting-Based Deep Cascade Network". 

If you have any questions, please contact us. Email: [gaoyunhao128@163.com](mailto:gaoyunhao128@163.com) [gaofeng@ouc.edu.cn](mailto:gaofeng@ouc.edu.cn)

Before running this code, you should correctly install ubuntu system and CAFFE framework. Refer to this guildeline "<http://caffe.berkeleyvision.org/installation.html>" After correctly installing ubuntu and caffe, you can run this code by the following procedures. 

(1) The farmland dataset (LMDB format) is prepared on "https://share.weiyun.com/5M2gyVd".

(2) Opening the terminal and running this script to execute the training of DCNet: "sh train.sh"

​    Then, training model named “***.caffemodel” can be obtained.

(3) Running the following script to executes the testing of DCNet and record testing logs: "sh test.sh".

(4) Final change map can be calculated by "Calculating_result.m".
