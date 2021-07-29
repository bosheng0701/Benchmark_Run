
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/cfd
 SECONDS=0
 echo  "cfd run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/cfd-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/cfd-rodinia-3.1/data/missile.domn.0.2M >cfd_0.2M.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/gaussian
 SECONDS=0
 echo  "gaussian run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/gaussian-rodinia-3.1 -f /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/gaussian-rodinia-3.1/data/matrix4.txt > gaussian_matrix4.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
 SECONDS=0
 echo  "kmeans run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/kmeans-rodinia-3.1 -o -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/kmeans-rodinia-3.1/data/128k.txt >kmeans_128k.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


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
 cd /root/benchmark_run/polybench/atax
 SECONDS=0
 echo  "atax run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-atax > atax.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/mvt
 SECONDS=0
 echo  "mvt run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-mvt > mvt.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/parboil/parboil-spmv
#  SECONDS=0
#  echo  "parboil-spmv run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-spmv 

#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/sdk/dct
#  SECONDS=0
#  echo  "dct run" |tee -a time.txt
#  /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/dct8x8 /root/gpgpu-sim_simulations/benchmarks/src/cuda/sdk/4.2/dct8x8/doc/barbara_sm.png 

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/streamcluster
 SECONDS=0
 echo  "streamcluster run" |tee -a time.txt  
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/streamcluster-rodinia-3.1 10 20 256 65536 65536 1000 none output.txt 1 >streamcluster_baseline_65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt 
