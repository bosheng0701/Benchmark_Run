 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/b+tree
 SECONDS=0
 echo  "b+tree run " |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/b+tree-rodinia-3.1 file /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/b+tree-rodinia-3.1/data/mil.txt command /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/b+tree-rodinia-3.1/data/command.txt > b+tree_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/backprop
 SECONDS=0
 echo  "backprop run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/backprop-rodinia-3.1 65536 >backprop_baseline_65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/bfs
 SECONDS=0
 echo  "bfs run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/bfs-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/bfs-rodinia-3.1/data/graph4096.txt >bfs_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt


#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/cfd
#  SECONDS=0
#  echo  "cfd run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/cfd-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/cfd-rodinia-3.1/data/missile.domn.0.2M >cfd_baseline_0.2M.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/dwt2d
 SECONDS=0
 echo  "dwt2d run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/dwt2d-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/dwt2d-rodinia-3.1/data/rgb.bmp -d 1024x1024 -f -5 -l 3 >dwt2d_baseline_rgb.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/gaussian
 SECONDS=0
 echo  "gaussian run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/gaussian-rodinia-3.1 -f /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/gaussian-rodinia-3.1/data/matrix4.txt > gaussian_baseline_matrix4.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/heartwall
#  SECONDS=0
#  echo  "heartwall run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/heartwall-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/heartwall-rodinia-3.1/data/test.avi 20 > heartwall_baseline_20.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/hotspot
#  SECONDS=0
#  echo  "hotspot run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hotspot-rodinia-3.1 512 2 2 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot-rodinia-3.1/data/temp_512 output.out > hotspot_baseline_512.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/hotspot3D
#  SECONDS=0
#  echo  "hotspot3D run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hotspot3D-rodinia-3.1 512 8 100 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot3D-rodinia-3.1/data/power_512x8 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot3D-rodinia-3.1/data/temp_512x8 output.out >hotspot3D_baseline_512x8.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/hybridsort
#  SECONDS=0
#  echo  "hybridsort run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hybridsort-rodinia-3.1 r > hybridsort_baseline.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
#  SECONDS=0
#  echo  "kmeans run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/kmeans-rodinia-3.1 -o -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/kmeans-rodinia-3.1/data/128k.txt >kmeans_baseline_128k.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/lavaMD
#  SECONDS=0
#  echo  "lavaMD run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lavaMD-rodinia-3.1 -boxes1d 10 > lavaMD_baseline.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/leukocyte
#  SECONDS=0 
#  echo  "leukocyte run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/leukocyte-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/leukocyte-rodinia-3.1/data/testfile.avi 5 >leukocyte_baseline_5.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt 
 
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/lud
 SECONDS=0
 echo  "lud run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lud-rodinia-3.1 -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/lud-rodinia-3.1/data/256.dat >lud_baseline_256.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

# #  echo  "mummergpu run" |tee -a time.txt
# #  cd /root/gpgpu-sim_distribution
# #  source setup_environment 
# #  make
# #  cd /root/benchmark_run/rodinia/3.1/cuda/mummergpu
# #  timeout 2h

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/myocyte
 SECONDS=0
 echo  "myocyte run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/myocyte-rodinia-3.1 100 1 0 > myocyte_baseline_100.txt 
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/nn
#  SECONDS=0
#  echo  "nn run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/nn-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/nn-rodinia-3.1/data/filelist_4 -r 5 -lat 30 -lng 90 > nn_baseline_filelist_4.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/nw
 SECONDS=0
 echo  "nw run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/nw-rodinia-3.1 2048 10 >nw_baseline_2048.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/particlefilter
 SECONDS=0
 echo  "particlefilter_float run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/particlefilter_float-rodinia-3.1 -x 128 -y 128 -z 10 -np 1000 >particlefilter_float_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/pathfinder
#  SECONDS=0
#  echo  "pathfinder run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/pathfinder-rodinia-3.1 100000 100 20 > result.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/srad 
#  SECONDS=0
#  echo  "srad_v2 run" |tee -a time.txt
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/srad_v2-rodinia-3.1 2048 2048 0 127 0 127 0.5 2 >srad_v2_baseline_2048.txt 
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt

 
#  cd /root/gpgpu-sim_distribution
#  source setup_environment 
#  make
#  cd /root/benchmark_run/rodinia/3.1/cuda/streamcluster
#  SECONDS=0
#  echo  "streamcluster run" |tee -a time.txt  
#  timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/streamcluster-rodinia-3.1 10 20 256 65536 65536 1000 none output.txt 1 >streamcluster_baseline_65536.txt
#  duration=$SECONDS
#  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt 
