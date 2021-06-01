python test.py \
--dataset colored_mnist \
--method_name erm \
--match_case 0.01 \
--match_flag 1 \
--pos_metric cos \
--test_metric t_sne \
--img_c 3 --img_w 128 --img_h 128 \
--train_domains R G \
--test_domains R G B RG RB GB RGB W \