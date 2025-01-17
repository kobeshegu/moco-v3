srun -p digitalcity -N1 --quotatype=auto --gres=gpu:8 --cpus-per-task=128 \
python main_moco.py \
  --moco-m-cos --crop-min=.2 \
  --dist-url 'tcp://localhost:10001' \
  --multiprocessing-distributed --world-size 1 --rank 0 \
  --seed 2 \
  --epochs 1 \
  --data /mnt/lustre/yangmengping/data \
  --save_dir /mnt/lustre/yangmengping/mocov3/seed2
  
