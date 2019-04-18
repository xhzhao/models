cd ../
export PYTHONPATH=$PYTHONPATH:`pwd`
cd object_detection

python dataset_tools/create_coco_tf_record.py --h

#VAL_IMAGE_DIR='/home/xhzhao/code/agraph/dataset/coco_val/val2014/'
#VAL_ANNOTATIONS_FILE='/home/xhzhao/code/agraph/dataset/coco_val/instances_val2014_8k.json'
VAL_IMAGE_DIR='/home/xhzhao/code/agraph/dataset/coco_val/val2017/'
VAL_ANNOTATIONS_FILE='/home/xhzhao/code/agraph/dataset/coco_val/annotations/instances_val2017.json'
OUTPUT_DIR=./output_tf_record/
python dataset_tools/create_coco_tf_record.py --logtostderr \
  --val_image_dir="${VAL_IMAGE_DIR}" \
  --val_annotations_file="${VAL_ANNOTATIONS_FILE}" \
  --output_dir="${OUTPUT_DIR}"

