#!/bin/bash
cd  `dirname $0`
echo `pwd`
training_path="/Users/hy/Downloads/bytedance_icme_recomend/final_track2_train.txt"
validation_path="/Users/hy/Downloads/bytedance_icme_recomend/final_track2_test_no_anwser.txt"
echo "training path: " $training_path
echo "validation path: " $validation_path

save_model_dir="/Users/hy/work/Bytedance_ICME_challenge/tmp_save_model_cpk"
echo "save model on: " $save_model_dir

batch_size=10
embedding_size=40
echo "batch size: " $batch_size
echo "embedding size: " $embedding_size

optimizer="adam"
lr="0.0005"

task="finish"
track=2
echo "task: " $task
echo "track: " $track

mkdir ${save_model_dir};

source activate py3

python train.py \
  --training_path $training_path \
  --validation_path $validation_path \
  --save_model_dir $save_model_dir \
  --batch_size $batch_size \
  --embedding_size $embedding_size \
  --lr $lr \
  --task $task \
  --track $track \
  --optimizer $optimizer
