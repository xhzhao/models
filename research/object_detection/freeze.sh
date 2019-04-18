python export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path /home/xhzhao/code/agraph/models/tf/mask_rcnn_res50/mask_rcnn_resnet50_coco.config \
    --trained_checkpoint_prefix /home/xhzhao/code/agraph/models/tf/mask_rcnn_res50/model.ckpt-100000 \
    --output_directory /home/xhzhao/code/agraph/models/tf/mask_rcnn_res50_frozen/
