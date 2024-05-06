#!/bin/bash -l

#$ -P ec522

#$ -N dynamic1_test1

#$ -pe omp 4

#$ -l gpus=1

#$ -l gpu_c=6.0

#$ -j y

#$ -m bea

source /usr4/ec522/adhithir/neuws311/bin/activate

cd /usr4/ec522/adhithir/NeuWS_COI


/usr4/ec522/adhithir/neuws311/bin/python ./recon_exp_data.py \
   --dynamic_scene \
   --num_t 100 --data_dir /dynamic_objects_dynamic_aberrations/owlStamp_onionSkin/Zernike_SLM_data \
   --scene_name owlStamp_onionSkin --phs_layers 4 --num_epochs 1000 --save_per_frame
