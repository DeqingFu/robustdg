python train.py \
--dataset colored_mnist \
--method_name matchdg_ctr \
--match_case 0.01 \
--match_flag 1 \
--epochs 100 \
--batch_size 128 \
--pos_metric cos \
--img_c 3 --img_w 128 --img_h 128 \
--train_domains R G \
--test_domains W RGB