srun -p digitalcity -N1 --quotatype=reserved --gres=gpu:8 --cpus-per-task=128 \
python main_moco.py \
  --moco-m-cos --crop-min=.2 \
  --dist-url 'tcp://localhost:10001' \
  --multiprocessing-distributed --world-size 1 --rank 0 \
  --resume /mnt/lustre/yangmengping/mocov3/R50/checkpoint_0039.pth.tar \
  --data /mnt/lustre/yangmengping/data
  
