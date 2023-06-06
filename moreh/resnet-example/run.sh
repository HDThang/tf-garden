#!/usr/bin/env bash
### SETTING ###
EXPERIMENT=$1
config_file=$2
output_dir="${EXPERIMENT}_output"
[[ ! -d $output_dir ]] && mkdir -p $output_dir

### END OF SETTING ###

# add the project's root to PYTHONPATH
export PYTHONPATH="../../:${PYTHONPATH}"

#experiment can be found in ofical/vision/configs/image_classification.py
#find the config.yaml in official/vision/configs/experiments/image_clasificaiton

python3 train.py \
    --experiment=$EXPERIMENT\
    --config_file=$config_file \
    --mode=train \
    --model_dir=$output_dir 2>&1 | tee ${output_dir}/train.log \
