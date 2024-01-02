cuda_id=0
seed=0
name=ziyu_crafter_cuda_${cuda_id}_seed_${seed}
CUDA_VISIBLE_DEVICES=${cuda_id} python LID-rnd/train.py \
  --run.script train_eval \
  --use_wandb True \
  --logdir ~/logdir/${name} \
  --configs crafter #> ${name}.log 2>&1 & \