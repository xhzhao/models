cd ../
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd object_detection

python legacy/eval.py --h

CHECKPOINT_DIR="/home/xhzhao/code/agraph/models/tf/mask_rcnn_resnet50_atrous_512/"
EVAL_DIR="./eval_result/"
CONFIG_PATH="/home/xhzhao/code/agraph/models/tf/mask_rcnn_resnet50_atrous_512/pipeline.config"
python -m object_detection.legacy.eval \
        --logtostderr \
        --checkpoint_dir=$CHECKPOINT_DIR \
        --eval_dir=$EVAL_DIR \
        --pipeline_config_path=$CONFIG_PATH
