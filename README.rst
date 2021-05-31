A modified repo to reproduce results from `MatchDG paper <https://arxiv.org/abs/2006.07500>`_ 

Instead of rot_mnist, I changed the dataset to be a customized colored MNIST, 
  where in training, one or two RGB channels are colored,
  during testing, we test on the original MNIST digits and randomly colored RGB channels (all three channels are colored)


Installation
------------
To use the command-line interface of RobustDG, clone this repo and add the folder to your system's PATH (or alternatively, run the commands from the RobustDG root directory). 

**Load dataset**

Let's first load the rotatedMNIST dataset in a suitable format for the resnet18 architecture.

.. code:: shell

    cd data/
    python data_gen.py resnet18

**Train and evaluate ML model**

The following commands would train and evalute the MatchDG method on the Rotated MNIST dataset.

.. code:: shell

    python train.py --dataset colored_mnist --method_name matchdg_ctr --match_case 0.01 --match_flag 1 --epochs 100 --batch_size 256 --pos_metric cos 
    
    python train.py --dataset colored_mnist --method_name matchdg_erm --match_case -1 --penalty_ws 0.1 --epochs 25 --ctr_match_case 0.01 --ctr_match_flag 1 --ctr_match_interrupt 5 --ctr_model_name resnet18
      
    python test.py --dataset colored_mnist --method_name matchdg_erm --match_case -1 --penalty_ws 0.1 --epochs 25 --ctr_match_case 0.01 --ctr_match_flag 1 --ctr_match_interrupt 5 --ctr_model_name resnet18 --test_metric acc
    
    python test.py --dataset colored_mnist --method_name matchdg_ctr --match_case 0.01 --match_flag 1 --pos_metric cos --test_metric match_score
