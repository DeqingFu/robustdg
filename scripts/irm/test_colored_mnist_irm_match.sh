python test.py \
--dataset colored_mnist \
--method_name irm \
--match_case 0.01 \
--pos_metric cos \
--match_flag 1 \
--test_metric match_score \
--img_c 3 --img_w 128 --img_h 128 \
--train_domains R G \
--test_domains W RGB