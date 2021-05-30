python train.py \
--dataset colored_mnist \
--method_name matchdg_erm \
--match_case -1 \
--penalty_ws 0.1 \
--epochs 25 \
--ctr_match_case 0.01 \
--ctr_match_flag 1 \
--ctr_match_interrupt 5 \
--ctr_model_name resnet18 \
--img_c 3 --img_w 128 --img_h 128 \
--train_domains R G B RG RB GB  \
--test_domains W RGB