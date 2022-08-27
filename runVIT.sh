srun -p digitalcity -N1 --quotatype=auto --gres=gpu:8 --cpus-per-task=128 \ 
python main_moco.py \
  -a vit_base -b 2048 \
  --optimizer=adamw --lr=1.5e-4 --weight-decay=.1 \
  --epochs=200 --warmup-epochs=40 \
  --stop-grad-conv1 --moco-m-cos --moco-t=.2 \
  --dist-url 'tcp://localhost:10000' \
  --multiprocessing-distributed --world-size 1 --rank 0 \
  --save_dir 'mnt/lustre/yangmengping/mocov3/VIT_base' \
  --data /mnt/lustre/yangmengping/data
