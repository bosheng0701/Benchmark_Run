
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/cfd
#  SECONDS=0
#  echo  "cfd run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/cfd-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/cfd-rodinia-3.1/data/missile.domn.0.2M >cfd_0.2M.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/2DC
 SECONDS=0
 echo  "2DC run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-2DConvolution > 2DC.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/ispass/bfs
 SECONDS=0
 echo  "BFS run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/ispass-2009-BFS /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/ispass-2009/ispass-2009-BFS/data/graph65536.txt >BFS65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/sdk/dct
 SECONDS=0
 echo  "dct run" |tee -a time.txt
 /root/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dct8x8 >dct.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/srad 
#  SECONDS=0
#  echo  "srad_v2 run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/srad_v2-rodinia-3.1 2048 2048 0 127 0 127 0.5 2 >srad_v2_baseline_2048.txt 
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
#  SECONDS=0
#  echo  "kmeans run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/kmeans-rodinia-3.1 -o -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/kmeans-rodinia-3.1/data/128k.txt >kmeans_128k.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/gaussian
 SECONDS=0
 echo  "gaussian run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/gaussian-rodinia-3.1 -f /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/gaussian-rodinia-3.1/data/matrix208.txt > gaussian_baseline_matrix208.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/lavaMD
#  SECONDS=0
#  echo  "lavaMD run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lavaMD-rodinia-3.1 -boxes1d 10 > lavaMD_baseline.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

  cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/pannotia/color_max
 SECONDS=0
 echo  "color_max run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/color_max /root/gpgpu-sim_simulations/benchmarks/data_dirs/pannotia/color_max/data/ecology1.graph 1 >color_max.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/sdk/MGT
 SECONDS=0
 echo  "MGT run" |tee -a time.txt
 /root/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/mergeSort >MGT.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
