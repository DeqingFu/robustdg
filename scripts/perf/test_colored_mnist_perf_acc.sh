python test.py \
--dataset colored_mnist \
--method_name erm_match \
--match_case 1.0 \
--pos_metric cos \
--match_flag 1 \
--test_metric acc \
--img_c 3 --img_w 128 --img_h 128 \
--train_domains R G B RG RB GB \
--test_domains W RGB