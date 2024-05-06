#!/bin/bash -l

#$ -P ec522

#$ -N dog_results

#$ -pe omp 4

#$ -l gpus=1

#$ -l gpu_c=6.0

#$ -j y

#$ -m bea

source /usr4/ec522/adhithir/neuws311/bin/activate

cd /usr4/ec522/adhithir/NeuWS_COI


/usr4/ec522/adhithir/neuws311/bin/python ./recon_exp_data.py \
   --static_phase \
   --num_t 100 --data_dir /static_objects_static_aberrations/dog_esophagus_0.5diffuser/Zernike_SLM_data \
   --scene_name dog_esophagus_0.5diffuser --phs_layers 4 --num_epochs 1000 --save_per_frame
