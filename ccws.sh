 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/bfs
 SECONDS=0
 echo  "bfs run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/bfs-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/bfs-rodinia-3.1/data/graph4096.txt >bfs_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
 SECONDS=0
 echo  "kmeans run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/kmeans-rodinia-3.1 -o -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/kmeans-rodinia-3.1/data/128k.txt >kmeans_baseline_128k.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/streamcluster
 SECONDS=0
 echo  "streamcluster run" |tee -a time.txt  
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/streamcluster-rodinia-3.1 10 20 256 65536 65536 1000 none output.txt 1 >streamcluster_baseline_65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt 

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/cfd
 SECONDS=0
 echo  "cfd run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/cfd-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/cfd-rodinia-3.1/data/missile.domn.0.2M >cfd_baseline_0.2M.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/nw
 SECONDS=0
 echo  "nw run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/nw-rodinia-3.1 2048 10 >nw_baseline_2048.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/srad 
 SECONDS=0
 echo  "srad_v2 run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/srad_v2-rodinia-3.1 128 128 0 31 0 31 0.5 2 >srad_v2_baseline_2048.txt 
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/lud
 SECONDS=0
 echo  "lud run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lud-rodinia-3.1 -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/lud-rodinia-3.1/data/256.dat >lud_baseline_256.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/ispass/wp
 SECONDS=0
 echo  "wp run" |tee -a time.txt
 echo "10 ./data/" |/root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/ispass-2009-WP >wp.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
